# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ObjectTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ObjectTypeDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :plural_label

        sig { returns(String) }
        attr_accessor :singular_label

        sig do
          params(
            object_type_id: String,
            plural_label: String,
            singular_label: String
          ).returns(T.attached_class)
        end
        def self.new(object_type_id:, plural_label:, singular_label:)
        end

        sig do
          override.returns(
            {
              object_type_id: String,
              plural_label: String,
              singular_label: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
