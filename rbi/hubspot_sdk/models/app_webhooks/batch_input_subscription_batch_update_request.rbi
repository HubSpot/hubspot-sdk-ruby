# typed: strong

module HubspotSDK
  module Models
    module AppWebhooks
      class BatchInputSubscriptionBatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::AppWebhooks::BatchInputSubscriptionBatchUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::AppWebhooks::SubscriptionBatchUpdateRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::AppWebhooks::SubscriptionBatchUpdateRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[
                  HubspotSDK::AppWebhooks::SubscriptionBatchUpdateRequest
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
