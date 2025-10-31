# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class BatchInputSubscriptionBatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionBatchUpdateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>]
      end
    end
  end
end
