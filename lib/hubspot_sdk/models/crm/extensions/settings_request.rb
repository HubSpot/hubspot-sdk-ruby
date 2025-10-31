# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class SettingsRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!attribute height
          #
          #   @return [Integer, nil]
          optional :height, Integer

          # @!attribute is_ready
          #
          #   @return [Boolean, nil]
          optional :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute supports_custom_objects
          #
          #   @return [Boolean, nil]
          optional :supports_custom_objects,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsCustomObjects

          # @!attribute supports_inbound_calling
          #
          #   @return [Boolean, nil]
          optional :supports_inbound_calling,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsInboundCalling

          # @!attribute uses_calling_window
          #
          #   @return [Boolean, nil]
          optional :uses_calling_window, HubspotSDK::Internal::Type::Boolean, api_name: :usesCallingWindow

          # @!attribute uses_remote
          #
          #   @return [Boolean, nil]
          optional :uses_remote, HubspotSDK::Internal::Type::Boolean, api_name: :usesRemote

          # @!attribute width
          #
          #   @return [Integer, nil]
          optional :width, Integer

          # @!method initialize(name:, url:, height: nil, is_ready: nil, supports_custom_objects: nil, supports_inbound_calling: nil, uses_calling_window: nil, uses_remote: nil, width: nil)
          #   @param name [String]
          #   @param url [String]
          #   @param height [Integer]
          #   @param is_ready [Boolean]
          #   @param supports_custom_objects [Boolean]
          #   @param supports_inbound_calling [Boolean]
          #   @param uses_calling_window [Boolean]
          #   @param uses_remote [Boolean]
          #   @param width [Integer]
        end
      end
    end
  end
end
