# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#list_journal_subscriptions
      class CollectionResponseSubscriptionResponseNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse1>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse1] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse1>]
      end
    end
  end
end
