# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#update_subscription
      class WebhookUpdateSubscriptionParams < HubSpotSDK::Models::Webhooks::SubscriptionPatchRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute subscription_id
        #
        #   @return [Integer]
        required :subscription_id, Integer

        # @!method initialize(app_id:, subscription_id:, request_options: {})
        #   @param app_id [Integer]
        #   @param subscription_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
