# typed: strong

module HubspotSDK
  module Models
    module AppWebhooks
      class SubscriptionListResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::AppWebhooks::SubscriptionListResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # List of event subscriptions for your app
        sig { returns(T::Array[HubspotSDK::AppWebhooks::SubscriptionResponse]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubspotSDK::AppWebhooks::SubscriptionResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # List of event subscriptions for your app
          results:
        )
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::AppWebhooks::SubscriptionResponse] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
