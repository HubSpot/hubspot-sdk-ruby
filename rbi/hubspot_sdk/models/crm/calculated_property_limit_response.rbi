# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CalculatedPropertyLimitResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CalculatedPropertyLimitResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::UsageForObjectType]) }
        attr_accessor :by_object_type

        # The maximum number of calculated properties allowed.
        sig { returns(Integer) }
        attr_accessor :overall_limit

        # The percentage of the overall limit that is currently being used for calculated
        # properties.
        sig { returns(Float) }
        attr_accessor :overall_percentage

        # The total number of calculated properties currently in use.
        sig { returns(Integer) }
        attr_accessor :overall_usage

        sig do
          params(
            by_object_type:
              T::Array[HubspotSDK::Crm::UsageForObjectType::OrHash],
            overall_limit: Integer,
            overall_percentage: Float,
            overall_usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          by_object_type:,
          # The maximum number of calculated properties allowed.
          overall_limit:,
          # The percentage of the overall limit that is currently being used for calculated
          # properties.
          overall_percentage:,
          # The total number of calculated properties currently in use.
          overall_usage:
        )
        end

        sig do
          override.returns(
            {
              by_object_type: T::Array[HubspotSDK::Crm::UsageForObjectType],
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
