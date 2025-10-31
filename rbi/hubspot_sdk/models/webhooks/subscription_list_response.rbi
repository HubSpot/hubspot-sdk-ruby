# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionListResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::SubscriptionListResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # List of event subscriptions for your app
        sig { returns(T::Array[HubspotSDK::Webhooks::SubscriptionResponse]) }
        attr_accessor :results

        # List of event subscriptions for your app
        sig do
          params(
            results:
              T::Array[HubspotSDK::Webhooks::SubscriptionResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # List of event subscriptions for your app
          results:
        )
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::Webhooks::SubscriptionResponse] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
