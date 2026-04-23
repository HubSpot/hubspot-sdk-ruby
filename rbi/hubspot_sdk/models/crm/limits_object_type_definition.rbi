# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class LimitsObjectTypeDefinition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::LimitsObjectTypeDefinition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the object type.
        sig { returns(String) }
        attr_accessor :object_type_id

        # The plural form label for the object type.
        sig { returns(String) }
        attr_accessor :plural_label

        # The singular form label for the object type.
        sig { returns(String) }
        attr_accessor :singular_label

        sig do
          params(
            object_type_id: String,
            plural_label: String,
            singular_label: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the object type.
          object_type_id:,
          # The plural form label for the object type.
          plural_label:,
          # The singular form label for the object type.
          singular_label:
        )
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
