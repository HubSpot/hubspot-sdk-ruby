# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionListResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SubscriptionListResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array containing all active and paused event subscriptions configured for the
        # app.
        sig { returns(T::Array[HubSpotSDK::Webhooks::SubscriptionResponse]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubSpotSDK::Webhooks::SubscriptionResponse::OrHash]
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
            { results: T::Array[HubSpotSDK::Webhooks::SubscriptionResponse] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
