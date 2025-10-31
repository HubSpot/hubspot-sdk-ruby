# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class SettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute height
          #   The target height of the iframe that will contain your phone/calling UI.
          #
          #   @return [Integer, nil]
          optional :height, Integer

          # @!attribute is_ready
          #   When true, this indicates that your calling app is ready for production. Users
          #   will be able to select your calling app as their provider and can then click to
          #   dial within HubSpot.
          #
          #   @return [Boolean, nil]
          optional :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute name
          #   The name of your calling service to display to users.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute supports_custom_objects
          #   When true, users will be able to click to dial from custom objects.
          #
          #   @return [Boolean, nil]
          optional :supports_custom_objects,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsCustomObjects

          # @!attribute supports_inbound_calling
          #   When true, this indicates that your calling app supports inbound calling within
          #   HubSpot.
          #
          #   @return [Boolean, nil]
          optional :supports_inbound_calling,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsInboundCalling

          # @!attribute url
          #   The URL to your phone/calling UI, built with the [Calling SDK](#).
          #
          #   @return [String, nil]
          optional :url, String

          # @!attribute uses_calling_window
          #   When false, this indicates that your calling app does not require the use of the
          #   separate calling window to hold the call connection.
          #
          #   @return [Boolean, nil]
          optional :uses_calling_window, HubspotSDK::Internal::Type::Boolean, api_name: :usesCallingWindow

          # @!attribute uses_remote
          #   When false, this indicates that your calling app does not use the anchored
          #   calling remote within the HubSpot app.
          #
          #   @return [Boolean, nil]
          optional :uses_remote, HubspotSDK::Internal::Type::Boolean, api_name: :usesRemote

          # @!attribute width
          #   The target width of the iframe that will contain your phone/calling UI.
          #
          #   @return [Integer, nil]
          optional :width, Integer

          # @!method initialize(height: nil, is_ready: nil, name: nil, supports_custom_objects: nil, supports_inbound_calling: nil, url: nil, uses_calling_window: nil, uses_remote: nil, width: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CRM::Extensions::SettingsPatchRequest} for more details.
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
