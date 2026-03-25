# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class SettingsRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute height
          #   Specifies the height of the calling extension interface.
          #
          #   @return [Integer]
          required :height, Integer

          # @!attribute is_ready
          #   Indicates if the calling extension is ready for use.
          #
          #   @return [Boolean]
          required :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute name
          #   The name of the calling extension.
          #
          #   @return [String]
          required :name, String

          # @!attribute supports_custom_objects
          #   Indicates if the calling extension supports custom objects.
          #
          #   @return [Boolean]
          required :supports_custom_objects,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsCustomObjects

          # @!attribute supports_inbound_calling
          #   Indicates if the calling extension supports inbound calling.
          #
          #   @return [Boolean]
          required :supports_inbound_calling,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsInboundCalling

          # @!attribute url
          #   The URL associated with the calling extension.
          #
          #   @return [String]
          required :url, String

          # @!attribute uses_calling_window
          #   Indicates if the calling extension uses a separate calling window.
          #
          #   @return [Boolean]
          required :uses_calling_window, HubspotSDK::Internal::Type::Boolean, api_name: :usesCallingWindow

          # @!attribute uses_remote
          #   Indicates if the calling extension uses remote services.
          #
          #   @return [Boolean]
          required :uses_remote, HubspotSDK::Internal::Type::Boolean, api_name: :usesRemote

          # @!attribute width
          #   Specifies the width of the calling extension interface.
          #
          #   @return [Integer]
          required :width, Integer

          # @!method initialize(height:, is_ready:, name:, supports_custom_objects:, supports_inbound_calling:, url:, uses_calling_window:, uses_remote:, width:)
          #   @param height [Integer] Specifies the height of the calling extension interface.
          #
          #   @param is_ready [Boolean] Indicates if the calling extension is ready for use.
          #
          #   @param name [String] The name of the calling extension.
          #
          #   @param supports_custom_objects [Boolean] Indicates if the calling extension supports custom objects.
          #
          #   @param supports_inbound_calling [Boolean] Indicates if the calling extension supports inbound calling.
          #
          #   @param url [String] The URL associated with the calling extension.
          #
          #   @param uses_calling_window [Boolean] Indicates if the calling extension uses a separate calling window.
          #
          #   @param uses_remote [Boolean] Indicates if the calling extension uses remote services.
          #
          #   @param width [Integer] Specifies the width of the calling extension interface.
        end
      end
    end
  end
end
