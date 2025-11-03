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

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :plural_label

        sig { returns(String) }
        attr_accessor :singular_label

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
        def self.new(object_type_id:, plural_label:, singular_label:, usage:)
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
