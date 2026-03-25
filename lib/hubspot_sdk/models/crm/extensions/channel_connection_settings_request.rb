# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ChannelConnectionSettingsRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute is_ready
          #   Indicates whether the channel connection settings are ready.
          #
          #   @return [Boolean]
          required :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute url
          #   The URL associated with the channel connection settings.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(is_ready:, url:)
          #   @param is_ready [Boolean] Indicates whether the channel connection settings are ready.
          #
          #   @param url [String] The URL associated with the channel connection settings.
        end
      end
    end
  end
end
