# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionBatchUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the subscription to be updated. It is an integer.
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute active
        #   A boolean indicating whether the subscription is active.
        #
        #   @return [Boolean]
        required :active, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(id:, active:)
        #   @param id [Integer] The unique identifier for the subscription to be updated. It is an integer.
        #
        #   @param active [Boolean] A boolean indicating whether the subscription is active.
      end
    end
  end
end
