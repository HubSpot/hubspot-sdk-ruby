# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      module WebhookSubscriptions
        # @see HubspotSDK::Resources::Webhooks::WebhookSubscriptions::Batch#update_subscriptions
        class BatchUpdateSubscriptionsParams < HubspotSDK::Models::Webhooks::BatchInputSubscriptionBatchUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!method initialize(app_id:, request_options: {})
          #   @param app_id [Integer]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
