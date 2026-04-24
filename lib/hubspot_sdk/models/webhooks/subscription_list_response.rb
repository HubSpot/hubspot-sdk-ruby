# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#list_event_subscriptions
      class SubscriptionListResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of subscription responses, each detailing a specific subscription's
        #   properties and status.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::SubscriptionListResponse} for more details.
        #
        #   @param results [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>] An array of subscription responses, each detailing a specific subscription's pro
      end
    end
  end
end
