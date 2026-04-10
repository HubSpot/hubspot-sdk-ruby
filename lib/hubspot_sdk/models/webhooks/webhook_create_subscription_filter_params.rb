# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#create_subscription_filter
      class WebhookCreateSubscriptionFilterParams < HubSpotSDK::Models::Webhooks::FilterCreateRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
