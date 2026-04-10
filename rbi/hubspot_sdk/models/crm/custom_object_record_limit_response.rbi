# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class CustomObjectRecordLimitResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::CustomObjectRecordLimitResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::UsageForObjectType]) }
        attr_accessor :by_object_type

        # The maximum number of custom object records allowed.
        sig { returns(Integer) }
        attr_accessor :overall_limit

        # The percentage of the overall custom object record limit that has been used.
        sig { returns(Float) }
        attr_accessor :overall_percentage

        # The total number of custom object records currently in use.
        sig { returns(Integer) }
        attr_accessor :overall_usage

        sig do
          params(
            by_object_type:
              T::Array[HubSpotSDK::Crm::UsageForObjectType::OrHash],
            overall_limit: Integer,
            overall_percentage: Float,
            overall_usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          by_object_type:,
          # The maximum number of custom object records allowed.
          overall_limit:,
          # The percentage of the overall custom object record limit that has been used.
          overall_percentage:,
          # The total number of custom object records currently in use.
          overall_usage:
        )
        end

        sig do
          override.returns(
            {
              by_object_type: T::Array[HubSpotSDK::Crm::UsageForObjectType],
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
