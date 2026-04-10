# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class SettingsChangeRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute target_url
        #   A publicly available URL for Hubspot to call where event payloads will be
        #   delivered. See [link-so-some-doc](#) for details about the format of these event
        #   payloads.
        #
        #   @return [String]
        required :target_url, String, api_name: :targetUrl

        # @!attribute throttling
        #
        #   @return [HubSpotSDK::Models::Webhooks::ThrottlingSettings]
        required :throttling, -> { HubSpotSDK::Webhooks::ThrottlingSettings }

        # @!method initialize(target_url:, throttling:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::SettingsChangeRequest} for more details.
        #
        #   @param target_url [String] A publicly available URL for Hubspot to call where event payloads will be delive
        #
        #   @param throttling [HubSpotSDK::Models::Webhooks::ThrottlingSettings]
      end
    end
  end
end
