# typed: strong

module HubspotSDK
  module Models
    module Crm
      class LimitAndUsageForObjectType < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::LimitAndUsageForObjectType,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :limit

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(Float) }
        attr_accessor :percentage

        sig { returns(String) }
        attr_accessor :plural_label

        sig { returns(String) }
        attr_accessor :singular_label

        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(
            limit: Integer,
            object_type_id: String,
            percentage: Float,
            plural_label: String,
            singular_label: String,
            usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          limit:,
          object_type_id:,
          percentage:,
          plural_label:,
          singular_label:,
          usage:
        )
        end

        sig do
          override.returns(
            {
              limit: Integer,
              object_type_id: String,
              percentage: Float,
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
