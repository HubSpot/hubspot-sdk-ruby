# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubSpotSDK::Resources::Conversations::CustomChannels::ChannelAccounts#update_staging_token
        class ChannelAccountUpdateStagingTokenParams < HubSpotSDK::Models::Conversations::PublicChannelAccountStagingTokenUpdateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute channel_id
          #
          #   @return [Integer]
          required :channel_id, Integer

          # @!attribute account_token
          #
          #   @return [String]
          required :account_token, String

          # @!method initialize(channel_id:, account_token:, request_options: {})
          #   @param channel_id [Integer]
          #   @param account_token [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
