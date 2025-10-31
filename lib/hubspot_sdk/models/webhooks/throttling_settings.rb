# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class ThrottlingSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute max_concurrent_requests
        #   The maximum number of concurrent HTTP requests HubSpot will attempt to make to
        #   your app.
        #
        #   @return [Integer]
        required :max_concurrent_requests, Integer, api_name: :maxConcurrentRequests

        # @!method initialize(max_concurrent_requests:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::ThrottlingSettings} for more details.
        #
        #   Configuration details for webhook throttling.
        #
        #   @param max_concurrent_requests [Integer] The maximum number of concurrent HTTP requests HubSpot will attempt to make to y
      end
    end
  end
end
