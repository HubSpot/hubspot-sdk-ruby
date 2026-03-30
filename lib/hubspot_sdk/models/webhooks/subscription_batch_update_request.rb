# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionBatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the webhook subscription to update.
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute active
        #   Whether to activate or pause the webhook subscription. If true, the subscription
        #   will send webhook notifications. If false, the subscription is paused and will
        #   not send notifications.
        #
        #   @return [Boolean]
        required :active, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(id:, active:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest} for more details.
        #
        #   @param id [Integer] The ID of the webhook subscription to update.
        #
        #   @param active [Boolean] Whether to activate or pause the webhook subscription. If true, the subscription
      end
    end
  end
end
