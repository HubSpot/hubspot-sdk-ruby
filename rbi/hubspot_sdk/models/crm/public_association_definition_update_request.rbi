# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAssociationDefinitionUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the association type.
        sig { returns(Integer) }
        attr_accessor :association_type_id

        # A descriptor that provides context about the relationship between associated
        # records.
        sig { returns(String) }
        attr_accessor :label

        # An optional descriptor for the inverse relationship between associated records.
        sig { returns(T.nilable(String)) }
        attr_reader :inverse_label

        sig { params(inverse_label: String).void }
        attr_writer :inverse_label

        sig do
          params(
            association_type_id: Integer,
            label: String,
            inverse_label: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the association type.
          association_type_id:,
          # A descriptor that provides context about the relationship between associated
          # records.
          label:,
          # An optional descriptor for the inverse relationship between associated records.
          inverse_label: nil
        )
        end

        sig do
          override.returns(
            {
              association_type_id: Integer,
              label: String,
              inverse_label: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
