# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationDefinitionCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A descriptor that provides context about the relationship between two associated
        # CRM objects.
        sig { returns(String) }
        attr_accessor :label

        # The unique identifier for the association definition.
        sig { returns(String) }
        attr_accessor :name

        # An optional descriptor that clarifies the reverse relationship in the
        # association.
        sig { returns(T.nilable(String)) }
        attr_reader :inverse_label

        sig { params(inverse_label: String).void }
        attr_writer :inverse_label

        sig do
          params(label: String, name: String, inverse_label: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # A descriptor that provides context about the relationship between two associated
          # CRM objects.
          label:,
          # The unique identifier for the association definition.
          name:,
          # An optional descriptor that clarifies the reverse relationship in the
          # association.
          inverse_label: nil
        )
        end

        sig do
          override.returns(
            { label: String, name: String, inverse_label: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
