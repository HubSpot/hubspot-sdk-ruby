# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#delete_subscription_filter
      class WebhookDeleteSubscriptionFilterParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute filter_id
        #
        #   @return [Integer]
        required :filter_id, Integer

        # @!method initialize(filter_id:, request_options: {})
        #   @param filter_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
