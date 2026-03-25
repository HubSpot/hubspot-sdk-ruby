# frozen_string_literal: true

module HubspotSDK
  module Models
    module AppWebhooks
      # @see HubspotSDK::Resources::AppWebhooks#list_subscriptions
      class SubscriptionListResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   List of event subscriptions for your app
        #
        #   @return [Array<HubspotSDK::Models::AppWebhooks::SubscriptionResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AppWebhooks::SubscriptionResponse] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::AppWebhooks::SubscriptionResponse>] List of event subscriptions for your app
      end
    end
  end
end
