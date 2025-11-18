# typed: strong

module HubspotSDK
  module Models
    module Crm
      class UsageForObjectType < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::UsageForObjectType,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the object type.
        sig { returns(String) }
        attr_accessor :object_type_id

        # The plural form of the label for the object type.
        sig { returns(String) }
        attr_accessor :plural_label

        # The singular form of the label for the object type.
        sig { returns(String) }
        attr_accessor :singular_label

        # The number of records used for the object type.
        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(
            object_type_id: String,
            plural_label: String,
            singular_label: String,
            usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the object type.
          object_type_id:,
          # The plural form of the label for the object type.
          plural_label:,
          # The singular form of the label for the object type.
          singular_label:,
          # The number of records used for the object type.
          usage:
        )
        end

        sig do
          override.returns(
            {
              object_type_id: String,
              plural_label: String,
              singular_label: String,
              usage: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
