# typed: strong

module HubSpotSDK
  module Models
    module WebhooksJournal
      class CollectionResponseSubscriptionResponseNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::WebhooksJournal::CollectionResponseSubscriptionResponseNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of subscription responses, where each item contains details about a
        # specific subscription. Each item follows the SubscriptionResponse schema.
        sig do
          returns(T::Array[HubSpotSDK::WebhooksJournal::SubscriptionResponse])
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubSpotSDK::WebhooksJournal::SubscriptionResponse::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of subscription responses, where each item contains details about a
          # specific subscription. Each item follows the SubscriptionResponse schema.
          results:
        )
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubSpotSDK::WebhooksJournal::SubscriptionResponse]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
