# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class SettingsChangeRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute target_url
        #   A publicly available URL for HubSpot to call where event payloads will be
        #   delivered.
        #
        #   @return [String]
        required :target_url, String, api_name: :targetUrl

        # @!attribute throttling
        #   Configuration details for webhook throttling.
        #
        #   @return [HubspotSDK::Models::Webhooks::ThrottlingSettings]
        required :throttling, -> { HubspotSDK::Webhooks::ThrottlingSettings }

        # @!method initialize(target_url:, throttling:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::SettingsChangeRequest} for more details.
        #
        #   New or updated webhook settings for an app.
        #
        #   @param target_url [String] A publicly available URL for HubSpot to call where event payloads will be delive
        #
        #   @param throttling [HubspotSDK::Models::Webhooks::ThrottlingSettings] Configuration details for webhook throttling.
      end
    end
  end
end
