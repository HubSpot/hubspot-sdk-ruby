# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class SettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute height
          #   The height setting for the calling extension interface.
          #
          #   @return [Integer, nil]
          optional :height, Integer

          # @!attribute is_ready
          #   Specifies whether the calling extension is ready for use.
          #
          #   @return [Boolean, nil]
          optional :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute name
          #   The name of the calling extension.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute supports_custom_objects
          #   Indicates if the calling extension supports custom objects.
          #
          #   @return [Boolean, nil]
          optional :supports_custom_objects,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsCustomObjects

          # @!attribute supports_inbound_calling
          #   Indicates if the calling extension supports inbound calling.
          #
          #   @return [Boolean, nil]
          optional :supports_inbound_calling,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsInboundCalling

          # @!attribute url
          #   The URL associated with the calling extension settings.
          #
          #   @return [String, nil]
          optional :url, String

          # @!attribute uses_calling_window
          #   Indicates if the calling extension uses a calling window.
          #
          #   @return [Boolean, nil]
          optional :uses_calling_window, HubspotSDK::Internal::Type::Boolean, api_name: :usesCallingWindow

          # @!attribute uses_remote
          #   Indicates if the calling extension uses a remote connection.
          #
          #   @return [Boolean, nil]
          optional :uses_remote, HubspotSDK::Internal::Type::Boolean, api_name: :usesRemote

          # @!attribute width
          #   The width setting for the calling extension interface.
          #
          #   @return [Integer, nil]
          optional :width, Integer

          # @!method initialize(height: nil, is_ready: nil, name: nil, supports_custom_objects: nil, supports_inbound_calling: nil, url: nil, uses_calling_window: nil, uses_remote: nil, width: nil)
          #   @param height [Integer] The height setting for the calling extension interface.
          #
          #   @param is_ready [Boolean] Specifies whether the calling extension is ready for use.
          #
          #   @param name [String] The name of the calling extension.
          #
          #   @param supports_custom_objects [Boolean] Indicates if the calling extension supports custom objects.
          #
          #   @param supports_inbound_calling [Boolean] Indicates if the calling extension supports inbound calling.
          #
          #   @param url [String] The URL associated with the calling extension settings.
          #
          #   @param uses_calling_window [Boolean] Indicates if the calling extension uses a calling window.
          #
          #   @param uses_remote [Boolean] Indicates if the calling extension uses a remote connection.
          #
          #   @param width [Integer] The width setting for the calling extension interface.
        end
      end
    end
  end
end
