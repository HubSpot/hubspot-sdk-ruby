# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks::Webhooks#list_journal_subscriptions
      class CollectionResponseSubscriptionResponseNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Webhooks::SubscriptionResponse1>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionResponse1] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Webhooks::SubscriptionResponse1>]
      end
    end
  end
end
