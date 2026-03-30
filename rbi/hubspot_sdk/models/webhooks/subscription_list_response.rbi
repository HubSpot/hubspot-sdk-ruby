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

        # An array containing all active and paused event subscriptions configured for the
        # app.
        sig { returns(T::Array[HubspotSDK::Webhooks::SubscriptionResponse]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubspotSDK::Webhooks::SubscriptionResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array containing all active and paused event subscriptions configured for the
          # app.
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
