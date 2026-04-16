# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class ThrottlingSettings < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute max_concurrent_requests
        #   The maximum number of concurrent requests allowed. It is an integer value.
        #
        #   @return [Integer]
        required :max_concurrent_requests, Integer, api_name: :maxConcurrentRequests

        # @!method initialize(max_concurrent_requests:)
        #   @param max_concurrent_requests [Integer] The maximum number of concurrent requests allowed. It is an integer value.
      end
    end
  end
end
