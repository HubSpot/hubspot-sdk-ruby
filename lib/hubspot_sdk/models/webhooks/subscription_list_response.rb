# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks::WebhookSubscriptions#list_subscriptions
      class SubscriptionListResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array containing all active and paused event subscriptions configured for the
        #   app.
        #
        #   @return [Array<HubspotSDK::Models::Webhooks::SubscriptionResponse>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionResponse] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::SubscriptionListResponse} for more details.
        #
        #   @param results [Array<HubspotSDK::Models::Webhooks::SubscriptionResponse>] An array containing all active and paused event subscriptions configured for the
      end
    end
  end
end
