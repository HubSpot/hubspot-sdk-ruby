# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#list_journal_subscriptions
      class CollectionResponseSubscriptionResponseNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of SubscriptionResponse objects, each representing a subscription's
        #   details such as actions, appId, createdAt, and other relevant properties.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse1>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse1] }

        # @!method initialize(results:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::CollectionResponseSubscriptionResponseNoPaging}
        #   for more details.
        #
        #   @param results [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse1>] An array of SubscriptionResponse objects, each representing a subscription's det
      end
    end
  end
end
