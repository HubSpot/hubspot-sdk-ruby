# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelIntegrationChannelCreate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute capabilities
        #
        #   @return [Hash{Symbol=>Object}]
        required :capabilities, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute channel_account_connection_redirect_url
        #
        #   @return [String, nil]
        optional :channel_account_connection_redirect_url,
                 String,
                 api_name: :channelAccountConnectionRedirectUrl

        # @!attribute channel_description
        #
        #   @return [String, nil]
        optional :channel_description, String, api_name: :channelDescription

        # @!attribute channel_logo_url
        #
        #   @return [String, nil]
        optional :channel_logo_url, String, api_name: :channelLogoUrl

        # @!attribute webhook_url
        #
        #   @return [String, nil]
        optional :webhook_url, String, api_name: :webhookUrl

        # @!method initialize(capabilities:, name:, channel_account_connection_redirect_url: nil, channel_description: nil, channel_logo_url: nil, webhook_url: nil)
        #   @param capabilities [Hash{Symbol=>Object}]
        #   @param name [String]
        #   @param channel_account_connection_redirect_url [String]
        #   @param channel_description [String]
        #   @param channel_logo_url [String]
        #   @param webhook_url [String]
      end
    end
  end
end
