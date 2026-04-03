# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks::WebhookSubscriptions#delete_journal_subscription
      class WebhookSubscriptionDeleteJournalSubscriptionParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute subscription_id
        #
        #   @return [Integer]
        required :subscription_id, Integer

        # @!method initialize(subscription_id:, request_options: {})
        #   @param subscription_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
