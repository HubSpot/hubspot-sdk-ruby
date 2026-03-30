# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionPatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute active
        #   Whether to activate or pause the webhook subscription. If true, the subscription
        #   will send webhook notifications. If false, the subscription is paused and will
        #   not send notifications.
        #
        #   @return [Boolean, nil]
        optional :active, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(active: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::SubscriptionPatchRequest} for more details.
        #
        #   @param active [Boolean] Whether to activate or pause the webhook subscription. If true, the subscription
      end
    end
  end
end
