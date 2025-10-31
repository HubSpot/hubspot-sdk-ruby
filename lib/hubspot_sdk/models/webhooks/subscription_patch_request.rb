# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionPatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute active
        #   Determines if the subscription is active or paused.
        #
        #   @return [Boolean, nil]
        optional :active, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(active: nil)
        #   Updated details for the subscription.
        #
        #   @param active [Boolean] Determines if the subscription is active or paused.
      end
    end
  end
end
