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

        # An array of subscription responses, each detailing a specific subscription's
        # properties and status.
        sig { returns(T::Array[HubSpotSDK::Webhooks::SubscriptionResponse]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubSpotSDK::Webhooks::SubscriptionResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of subscription responses, each detailing a specific subscription's
          # properties and status.
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
