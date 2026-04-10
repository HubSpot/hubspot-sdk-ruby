# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class BatchInputSubscriptionBatchUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionBatchUpdateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>]
      end
    end
  end
end
