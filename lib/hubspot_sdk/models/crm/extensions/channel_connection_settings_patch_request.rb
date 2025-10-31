# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ChannelConnectionSettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute is_ready
          #   If true, this app will be considered to support channel connection
          #
          #   @return [Boolean, nil]
          optional :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute url
          #   The URL to fetch phone numbers available for channel connection
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(is_ready: nil, url: nil)
          #   @param is_ready [Boolean] If true, this app will be considered to support channel connection
          #
          #   @param url [String] The URL to fetch phone numbers available for channel connection
        end
      end
    end
  end
end
