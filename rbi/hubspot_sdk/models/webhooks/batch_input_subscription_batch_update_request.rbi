# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class BatchInputSubscriptionBatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::BatchInputSubscriptionBatchUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Webhooks::SubscriptionBatchUpdateRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Webhooks::SubscriptionBatchUpdateRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubspotSDK::Webhooks::SubscriptionBatchUpdateRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
