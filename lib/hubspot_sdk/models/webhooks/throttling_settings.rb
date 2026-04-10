# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class ThrottlingSettings < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute max_concurrent_requests
        #   The maximum number of HTTP requests HubSpot will attempt to make to your app in
        #   a given time frame determined by `period`.
        #
        #   @return [Integer]
        required :max_concurrent_requests, Integer, api_name: :maxConcurrentRequests

        # @!method initialize(max_concurrent_requests:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::ThrottlingSettings} for more details.
        #
        #   @param max_concurrent_requests [Integer] The maximum number of HTTP requests HubSpot will attempt to make to your app in
      end
    end
  end
end
