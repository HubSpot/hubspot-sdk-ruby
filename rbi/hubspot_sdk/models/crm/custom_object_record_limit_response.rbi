# typed: strong

module HubspotSDK
  module Models
    module CRM
      class CustomObjectRecordLimitResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::CustomObjectRecordLimitResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::UsageForObjectType]) }
        attr_accessor :by_object_type

        sig { returns(Integer) }
        attr_accessor :overall_limit

        sig { returns(Float) }
        attr_accessor :overall_percentage

        sig { returns(Integer) }
        attr_accessor :overall_usage

        sig do
          params(
            by_object_type:
              T::Array[HubspotSDK::CRM::UsageForObjectType::OrHash],
            overall_limit: Integer,
            overall_percentage: Float,
            overall_usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          by_object_type:,
          overall_limit:,
          overall_percentage:,
          overall_usage:
        )
        end

        sig do
          override.returns(
            {
              by_object_type: T::Array[HubspotSDK::CRM::UsageForObjectType],
              overall_limit: Integer,
              overall_percentage: Float,
              overall_usage: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
