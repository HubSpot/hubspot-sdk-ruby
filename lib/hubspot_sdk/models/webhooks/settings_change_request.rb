# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class SettingsChangeRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute target_url
        #   The URL to which webhook events will be sent. It is a string.
        #
        #   @return [String]
        required :target_url, String, api_name: :targetUrl

        # @!attribute throttling
        #
        #   @return [HubSpotSDK::Models::Webhooks::ThrottlingSettings]
        required :throttling, -> { HubSpotSDK::Webhooks::ThrottlingSettings }

        # @!method initialize(target_url:, throttling:)
        #   @param target_url [String] The URL to which webhook events will be sent. It is a string.
        #
        #   @param throttling [HubSpotSDK::Models::Webhooks::ThrottlingSettings]
      end
    end
  end
end
