# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionPatchRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute active
        #   A boolean indicating whether the subscription is active. If true, the
        #   subscription is active; if false, it is inactive.
        #
        #   @return [Boolean, nil]
        optional :active, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(active: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::SubscriptionPatchRequest} for more details.
        #
        #   @param active [Boolean] A boolean indicating whether the subscription is active. If true, the subscripti
      end
    end
  end
end
