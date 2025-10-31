# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class SettingsResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_at
        #   When this subscription was created. Formatted as milliseconds from the
        #   [Unix epoch](#).
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute target_url
        #   A publicly available URL for HubSpot to call where event payloads will be
        #   delivered. See [link-so-some-doc](#) for details about the format of these event
        #   payloads.
        #
        #   @return [String]
        required :target_url, String, api_name: :targetUrl

        # @!attribute throttling
        #   Configuration details for webhook throttling.
        #
        #   @return [HubspotSDK::Models::Webhooks::ThrottlingSettings]
        required :throttling, -> { HubspotSDK::Webhooks::ThrottlingSettings }

        # @!attribute updated_at
        #   When this subscription was last updated. Formatted as milliseconds from the
        #   [Unix epoch](#).
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(created_at:, target_url:, throttling:, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Webhooks::SettingsResponse} for more details.
        #
        #   Webhook settings for an app.
        #
        #   @param created_at [Time] When this subscription was created. Formatted as milliseconds from the [Unix epo
        #
        #   @param target_url [String] A publicly available URL for HubSpot to call where event payloads will be delive
        #
        #   @param throttling [HubspotSDK::Models::Webhooks::ThrottlingSettings] Configuration details for webhook throttling.
        #
        #   @param updated_at [Time] When this subscription was last updated. Formatted as milliseconds from the [Uni
      end
    end
  end
end
