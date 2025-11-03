# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ChannelConnectionSettingsRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute is_ready
          #
          #   @return [Boolean]
          required :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!method initialize(is_ready:, url:)
          #   @param is_ready [Boolean]
          #   @param url [String]
        end
      end
    end
  end
end
