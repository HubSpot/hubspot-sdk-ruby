# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ChannelConnectionSettingsResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute is_ready
          #
          #   @return [Boolean]
          required :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!method initialize(created_at:, is_ready:, updated_at:, url:)
          #   @param created_at [Time]
          #   @param is_ready [Boolean]
          #   @param updated_at [Time]
          #   @param url [String]
        end
      end
    end
  end
end
