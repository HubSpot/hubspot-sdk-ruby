# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicChannelIntegrationChannelPatch < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute capabilities
        #
        #   @return [Hash{Symbol=>Object}]
        required :capabilities, HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]

        # @!attribute channel_account_connection_redirect_url
        #
        #   @return [Object]
        required :channel_account_connection_redirect_url,
                 HubSpotSDK::Internal::Type::Unknown,
                 api_name: :channelAccountConnectionRedirectUrl

        # @!attribute channel_description
        #
        #   @return [Object]
        required :channel_description, HubSpotSDK::Internal::Type::Unknown, api_name: :channelDescription

        # @!attribute channel_logo_url
        #
        #   @return [Object]
        required :channel_logo_url, HubSpotSDK::Internal::Type::Unknown, api_name: :channelLogoUrl

        # @!attribute name
        #
        #   @return [Object]
        required :name, HubSpotSDK::Internal::Type::Unknown

        # @!attribute webhook_url
        #
        #   @return [Object]
        required :webhook_url, HubSpotSDK::Internal::Type::Unknown, api_name: :webhookUrl

        # @!method initialize(capabilities:, channel_account_connection_redirect_url:, channel_description:, channel_logo_url:, name:, webhook_url:)
        #   @param capabilities [Hash{Symbol=>Object}]
        #   @param channel_account_connection_redirect_url [Object]
        #   @param channel_description [Object]
        #   @param channel_logo_url [Object]
        #   @param name [Object]
        #   @param webhook_url [Object]
      end
    end
  end
end
