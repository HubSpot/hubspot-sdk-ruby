# frozen_string_literal: true

module HubspotSDK
  module Models
    module AppWebhooks
      class SettingsChangeRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute target_url
        #   A publicly available URL for HubSpot to call where event payloads will be
        #   delivered.
        #
        #   @return [String]
        required :target_url, String, api_name: :targetUrl

        # @!attribute throttling
        #
        #   @return [HubspotSDK::Models::AppWebhooks::ThrottlingSettings]
        required :throttling, -> { HubspotSDK::AppWebhooks::ThrottlingSettings }

        # @!method initialize(target_url:, throttling:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::AppWebhooks::SettingsChangeRequest} for more details.
        #
        #   @param target_url [String] A publicly available URL for HubSpot to call where event payloads will be delive
        #
        #   @param throttling [HubspotSDK::Models::AppWebhooks::ThrottlingSettings]
      end
    end
  end
end
