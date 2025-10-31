# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class SubscriptionBatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute active
        #
        #   @return [Boolean]
        required :active, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(id:, active:)
        #   @param id [Integer]
        #   @param active [Boolean]
      end
    end
  end
end
