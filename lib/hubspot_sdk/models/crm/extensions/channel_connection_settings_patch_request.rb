# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class ChannelConnectionSettingsPatchRequest < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute is_ready
          #   Indicates whether the channel connection settings are ready.
          #
          #   @return [Boolean, nil]
          optional :is_ready, HubSpotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute url
          #   The URL for the channel connection settings.
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(is_ready: nil, url: nil)
          #   @param is_ready [Boolean] Indicates whether the channel connection settings are ready.
          #
          #   @param url [String] The URL for the channel connection settings.
        end
      end
    end
  end
end
