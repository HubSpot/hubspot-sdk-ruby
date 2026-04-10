# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::Calling#create_settings
        class SettingsResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute created_at
          #   The date and time when the calling extension settings were created.
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute height
          #   The height of the calling extension interface.
          #
          #   @return [Integer]
          required :height, Integer

          # @!attribute is_ready
          #   Specifies whether the calling extension settings are ready for use.
          #
          #   @return [Boolean]
          required :is_ready, HubSpotSDK::Internal::Type::Boolean, api_name: :isReady

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
                   HubSpotSDK::Internal::Type::Boolean,
                   api_name: :supportsCustomObjects

          # @!attribute supports_inbound_calling
          #   Indicates if the calling extension supports inbound calling.
          #
          #   @return [Boolean]
          required :supports_inbound_calling,
                   HubSpotSDK::Internal::Type::Boolean,
                   api_name: :supportsInboundCalling

          # @!attribute updated_at
          #   The date and time when the calling extension settings were last updated.
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute url
          #   The URL associated with the calling extension.
          #
          #   @return [String]
          required :url, String

          # @!attribute uses_calling_window
          #   Specifies if the calling extension uses a dedicated calling window.
          #
          #   @return [Boolean]
          required :uses_calling_window, HubSpotSDK::Internal::Type::Boolean, api_name: :usesCallingWindow

          # @!attribute uses_remote
          #   Indicates if the calling extension uses a remote service.
          #
          #   @return [Boolean]
          required :uses_remote, HubSpotSDK::Internal::Type::Boolean, api_name: :usesRemote

          # @!attribute width
          #   The width of the calling extension interface.
          #
          #   @return [Integer]
          required :width, Integer

          # @!method initialize(created_at:, height:, is_ready:, name:, supports_custom_objects:, supports_inbound_calling:, updated_at:, url:, uses_calling_window:, uses_remote:, width:)
          #   @param created_at [Time] The date and time when the calling extension settings were created.
          #
          #   @param height [Integer] The height of the calling extension interface.
          #
          #   @param is_ready [Boolean] Specifies whether the calling extension settings are ready for use.
          #
          #   @param name [String] The name of the calling extension.
          #
          #   @param supports_custom_objects [Boolean] Indicates if the calling extension supports custom objects.
          #
          #   @param supports_inbound_calling [Boolean] Indicates if the calling extension supports inbound calling.
          #
          #   @param updated_at [Time] The date and time when the calling extension settings were last updated.
          #
          #   @param url [String] The URL associated with the calling extension.
          #
          #   @param uses_calling_window [Boolean] Specifies if the calling extension uses a dedicated calling window.
          #
          #   @param uses_remote [Boolean] Indicates if the calling extension uses a remote service.
          #
          #   @param width [Integer] The width of the calling extension interface.
        end
      end
    end
  end
end
