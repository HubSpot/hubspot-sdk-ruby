# frozen_string_literal: true

module HubspotSDK
  module Models
    module AppWebhooks
      class BatchInputSubscriptionBatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::AppWebhooks::SubscriptionBatchUpdateRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AppWebhooks::SubscriptionBatchUpdateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::AppWebhooks::SubscriptionBatchUpdateRequest>]
      end
    end
  end
end
