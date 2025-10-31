# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ChannelConnectionSettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute is_ready
          #
          #   @return [Boolean, nil]
          optional :is_ready, HubspotSDK::Internal::Type::Boolean, api_name: :isReady

          # @!attribute url
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(is_ready: nil, url: nil)
          #   @param is_ready [Boolean]
          #   @param url [String]
        end
      end
    end
  end
end
