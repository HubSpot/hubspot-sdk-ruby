# frozen_string_literal: true

module HubspotSDK
  module Models
    module AppWebhooks
      class SubscriptionPatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute active
        #   Determines if the subscription is active or paused.
        #
        #   @return [Boolean, nil]
        optional :active, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(active: nil)
        #   @param active [Boolean] Determines if the subscription is active or paused.
      end
    end
  end
end
