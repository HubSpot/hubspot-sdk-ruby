# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionListResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   List of event subscriptions for your app
        #
        #   @return [Array<HubspotSDK::Models::Webhooks::SubscriptionResponse>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionResponse] }

        # @!method initialize(results:)
        #   List of event subscriptions for your app
        #
        #   @param results [Array<HubspotSDK::Models::Webhooks::SubscriptionResponse>] List of event subscriptions for your app
      end
    end
  end
end
