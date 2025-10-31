# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::CustomChannels#list
      class CustomChannelListResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Conversations::CustomChannelListResponse::Result>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Conversations::CustomChannelListResponse::Result] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Conversations::CustomChannelListResponse::Result>]
        #   @param total [Integer]
        #   @param paging [HubspotSDK::Models::ForwardPaging]

        class Result < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute capabilities
          #
          #   @return [Hash{Symbol=>Object}]
          required :capabilities, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

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

          # @!method initialize(id:, capabilities:, created_at:, name:, channel_account_connection_redirect_url: nil, channel_description: nil, channel_logo_url: nil, webhook_url: nil)
          #   @param id [String]
          #   @param capabilities [Hash{Symbol=>Object}]
          #   @param created_at [Time]
          #   @param name [String]
          #   @param channel_account_connection_redirect_url [String]
          #   @param channel_description [String]
          #   @param channel_logo_url [String]
          #   @param webhook_url [String]
        end
      end
    end
  end
end
