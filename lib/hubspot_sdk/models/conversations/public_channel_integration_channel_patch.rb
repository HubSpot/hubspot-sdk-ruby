# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelIntegrationChannelPatch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute capabilities
        #
        #   @return [Hash{Symbol=>Object}]
        required :capabilities, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute channel_description
        #
        #   @return [Object]
        required :channel_description, HubspotSDK::Internal::Type::Unknown, api_name: :channelDescription

        # @!attribute channel_logo_url
        #
        #   @return [Object]
        required :channel_logo_url, HubspotSDK::Internal::Type::Unknown, api_name: :channelLogoUrl

        # @!attribute channel_account_connection_redirect_url
        #
        #   @return [Object, nil]
        optional :channel_account_connection_redirect_url,
                 HubspotSDK::Internal::Type::Unknown,
                 api_name: :channelAccountConnectionRedirectUrl

        # @!attribute name
        #
        #   @return [Object, nil]
        optional :name, HubspotSDK::Internal::Type::Unknown

        # @!attribute webhook_url
        #
        #   @return [Object, nil]
        optional :webhook_url, HubspotSDK::Internal::Type::Unknown, api_name: :webhookUrl

        # @!method initialize(capabilities:, channel_description:, channel_logo_url:, channel_account_connection_redirect_url: nil, name: nil, webhook_url: nil)
        #   @param capabilities [Hash{Symbol=>Object}]
        #   @param channel_description [Object]
        #   @param channel_logo_url [Object]
        #   @param channel_account_connection_redirect_url [Object]
        #   @param name [Object]
        #   @param webhook_url [Object]
      end
    end
  end
end
