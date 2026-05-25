# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      class CollectionResponseSubscriptionResponseNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of subscription responses, where each item contains details about a
        #   specific subscription. Each item follows the SubscriptionResponse schema.
        #
        #   @return [Array<HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::WebhooksJournal::SubscriptionResponse] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::WebhooksJournal::CollectionResponseSubscriptionResponseNoPaging}
        #   for more details.
        #
        #   @param results [Array<HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse>] An array of subscription responses, where each item contains details about a spe
      end
    end
  end
end
