# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class SettingsResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute height
          #
          #   @return [Integer]
          required :height, Integer

          # @!attribute is_ready
          #
          #   @return [Boolean]
          required :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute supports_custom_objects
          #
          #   @return [Boolean]
          required :supports_custom_objects,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsCustomObjects

          # @!attribute supports_inbound_calling
          #
          #   @return [Boolean]
          required :supports_inbound_calling,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :supportsInboundCalling

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!attribute uses_calling_window
          #
          #   @return [Boolean]
          required :uses_calling_window, HubspotSDK::Internal::Type::Boolean, api_name: :usesCallingWindow

          # @!attribute uses_remote
          #
          #   @return [Boolean]
          required :uses_remote, HubspotSDK::Internal::Type::Boolean, api_name: :usesRemote

          # @!attribute width
          #
          #   @return [Integer]
          required :width, Integer

          # @!method initialize(created_at:, height:, is_ready:, name:, supports_custom_objects:, supports_inbound_calling:, updated_at:, url:, uses_calling_window:, uses_remote:, width:)
          #   @param created_at [Time]
          #   @param height [Integer]
          #   @param is_ready [Boolean]
          #   @param name [String]
          #   @param supports_custom_objects [Boolean]
          #   @param supports_inbound_calling [Boolean]
          #   @param updated_at [Time]
          #   @param url [String]
          #   @param uses_calling_window [Boolean]
          #   @param uses_remote [Boolean]
          #   @param width [Integer]
        end
      end
    end
  end
end
