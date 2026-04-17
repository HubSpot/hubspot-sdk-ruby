# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class BatchInputSubscriptionBatchUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of SubscriptionBatchUpdateRequest objects, each representing a
        #   subscription to be updated. This property is required.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionBatchUpdateRequest] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::BatchInputSubscriptionBatchUpdateRequest} for
        #   more details.
        #
        #   @param inputs [Array<HubSpotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>] An array of SubscriptionBatchUpdateRequest objects, each representing a subscrip
      end
    end
  end
end
