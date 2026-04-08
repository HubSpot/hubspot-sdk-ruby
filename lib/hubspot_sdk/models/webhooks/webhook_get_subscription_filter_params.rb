# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks#get_subscription_filter
      class WebhookGetSubscriptionFilterParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute filter_id
        #
        #   @return [Integer]
        required :filter_id, Integer

        # @!method initialize(filter_id:, request_options: {})
        #   @param filter_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
