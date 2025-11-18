# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CustomPropertyLimitResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CustomPropertyLimitResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::LimitAndUsageForObjectType]) }
        attr_accessor :by_object_type

        # The total limit for custom properties across all objects.
        sig { returns(Integer) }
        attr_accessor :overall_limit

        # The percentage of the overall custom property limit that has been used.
        sig { returns(Float) }
        attr_accessor :overall_percentage

        # The total number of custom properties currently in use across all objects.
        sig { returns(Integer) }
        attr_accessor :overall_usage

        sig do
          params(
            by_object_type:
              T::Array[HubspotSDK::Crm::LimitAndUsageForObjectType::OrHash],
            overall_limit: Integer,
            overall_percentage: Float,
            overall_usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          by_object_type:,
          # The total limit for custom properties across all objects.
          overall_limit:,
          # The percentage of the overall custom property limit that has been used.
          overall_percentage:,
          # The total number of custom properties currently in use across all objects.
          overall_usage:
        )
        end

        sig do
          override.returns(
            {
              by_object_type:
                T::Array[HubspotSDK::Crm::LimitAndUsageForObjectType],
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
