# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class SettingsResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute created_at
          #   When this calling extension was created.
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute height
          #   The target height of the iframe that will contain your phone/calling UI.
          #
          #   @return [Integer]
          required :height, Integer

          # @!attribute is_ready
          #   When true, this indicates that your calling app is ready for production. Users
          #   will be able to select your calling app as their provider and can then click to
          #   dial within HubSpot.
          #
          #   @return [Boolean]
          required :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute name
          #   The name of your calling service to display to users.
          #
          #   @return [String]
          required :name, String

          # @!attribute supports_custom_objects
          #   When true, users will be able to click to dial from custom objects.
          #
          #   @return [Boolean]
          required :supports_custom_objects,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsCustomObjects

          # @!attribute supports_inbound_calling
          #   When true, this indicates that your calling app supports inbound calling within
          #   HubSpot.
          #
          #   @return [Boolean]
          required :supports_inbound_calling,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsInboundCalling

          # @!attribute updated_at
          #   The last time the settings for this calling extension were modified.
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute url
          #   The URL to your phone/calling UI, built with the [Calling SDK](#).
          #
          #   @return [String]
          required :url, String

          # @!attribute uses_calling_window
          #   When false, this indicates that your calling app does not require the use of the
          #   separate calling window to hold the call connection.
          #
          #   @return [Boolean]
          required :uses_calling_window, HubspotSDK::Internal::Type::Boolean, api_name: :usesCallingWindow

          # @!attribute uses_remote
          #   When false, this indicates that your calling app does not use the anchored
          #   calling remote within the HubSpot app.
          #
          #   @return [Boolean]
          required :uses_remote, HubspotSDK::Internal::Type::Boolean, api_name: :usesRemote

          # @!attribute width
          #   The target width of the iframe that will contain your phone/calling UI.
          #
          #   @return [Integer]
          required :width, Integer

          # @!method initialize(created_at:, height:, is_ready:, name:, supports_custom_objects:, supports_inbound_calling:, updated_at:, url:, uses_calling_window:, uses_remote:, width:)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CRM::Extensions::SettingsResponse} for more details.
          #
          #   @param created_at [Time] When this calling extension was created.
          #
          #   @param height [Integer] The target height of the iframe that will contain your phone/calling UI.
          #
          #   @param is_ready [Boolean] When true, this indicates that your calling app is ready for production. Users w
          #
          #   @param name [String] The name of your calling service to display to users.
          #
          #   @param supports_custom_objects [Boolean] When true, users will be able to click to dial from custom objects.
          #
          #   @param supports_inbound_calling [Boolean] When true, this indicates that your calling app supports inbound calling within
          #
          #   @param updated_at [Time] The last time the settings for this calling extension were modified.
          #
          #   @param url [String] The URL to your phone/calling UI, built with the [Calling SDK](#).
          #
          #   @param uses_calling_window [Boolean] When false, this indicates that your calling app does not require the use of the
          #
          #   @param uses_remote [Boolean] When false, this indicates that your calling app does not use the anchored calli
          #
          #   @param width [Integer] The target width of the iframe that will contain your phone/calling UI.
        end
      end
    end
  end
end
