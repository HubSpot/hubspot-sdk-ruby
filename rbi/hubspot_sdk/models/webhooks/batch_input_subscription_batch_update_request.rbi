# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class BatchInputSubscriptionBatchUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::BatchInputSubscriptionBatchUpdateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of SubscriptionBatchUpdateRequest objects, each representing a
        # subscription to be updated. This property is required.
        sig do
          returns(
            T::Array[HubSpotSDK::Webhooks::SubscriptionBatchUpdateRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Webhooks::SubscriptionBatchUpdateRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of SubscriptionBatchUpdateRequest objects, each representing a
          # subscription to be updated. This property is required.
          inputs:
        )
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubSpotSDK::Webhooks::SubscriptionBatchUpdateRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
