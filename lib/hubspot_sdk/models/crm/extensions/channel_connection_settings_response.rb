# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::Calling#create_channel_connection_settings
        class ChannelConnectionSettingsResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute created_at
          #   The date and time when the channel connection settings were created.
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute is_ready
          #   Indicates whether the channel connection settings are ready for use.
          #
          #   @return [Boolean]
          required :is_ready, HubSpotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute updated_at
          #   The date and time when the channel connection settings were last updated.
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute url
          #   The URL associated with the channel connection settings.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(created_at:, is_ready:, updated_at:, url:)
          #   @param created_at [Time] The date and time when the channel connection settings were created.
          #
          #   @param is_ready [Boolean] Indicates whether the channel connection settings are ready for use.
          #
          #   @param updated_at [Time] The date and time when the channel connection settings were last updated.
          #
          #   @param url [String] The URL associated with the channel connection settings.
        end
      end
    end
  end
end
