# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ChannelConnectionSettingsResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute created_at
          #   The timestamp this setting was created
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute is_ready
          #   If true, this app will be considered to support channel connection
          #
          #   @return [Boolean]
          required :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute updated_at
          #   The timestamp this setting was last updated
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute url
          #   The URL to fetch phone numbers available for channel connection
          #
          #   @return [String]
          required :url, String

          # @!method initialize(created_at:, is_ready:, updated_at:, url:)
          #   @param created_at [Time] The timestamp this setting was created
          #
          #   @param is_ready [Boolean] If true, this app will be considered to support channel connection
          #
          #   @param updated_at [Time] The timestamp this setting was last updated
          #
          #   @param url [String] The URL to fetch phone numbers available for channel connection
        end
      end
    end
  end
end
