# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_settings
      class SettingsResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute created_at
        #   The date and time when the webhook settings were created, in ISO 8601 format.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute target_url
        #   The URL to which the webhook events will be sent. It is a string.
        #
        #   @return [String]
        required :target_url, String, api_name: :targetUrl

        # @!attribute throttling
        #
        #   @return [HubSpotSDK::Models::Webhooks::ThrottlingSettings]
        required :throttling, -> { HubSpotSDK::Webhooks::ThrottlingSettings }

        # @!attribute updated_at
        #   The date and time when the webhook settings were last updated, in ISO 8601
        #   format.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(created_at:, target_url:, throttling:, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::SettingsResponse} for more details.
        #
        #   @param created_at [Time] The date and time when the webhook settings were created, in ISO 8601 format.
        #
        #   @param target_url [String] The URL to which the webhook events will be sent. It is a string.
        #
        #   @param throttling [HubSpotSDK::Models::Webhooks::ThrottlingSettings]
        #
        #   @param updated_at [Time] The date and time when the webhook settings were last updated, in ISO 8601 forma
      end
    end
  end
end
