# frozen_string_literal: true

module HubspotSDK
  module Models
    module AppWebhooks
      # @see HubspotSDK::Resources::AppWebhooks#delete_subscription
      class AppWebhookDeleteSubscriptionParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
