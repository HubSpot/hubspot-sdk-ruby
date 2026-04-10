# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubSpotSDK::Resources::Conversations::CustomChannels::ChannelAccounts#update
        class ChannelAccountUpdateParams < HubSpotSDK::Models::Conversations::PublicChannelAccountUpdateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute channel_id
          #
          #   @return [Integer]
          required :channel_id, Integer

          # @!attribute channel_account_id
          #
          #   @return [Integer]
          required :channel_account_id, Integer

          # @!method initialize(channel_id:, channel_account_id:, request_options: {})
          #   @param channel_id [Integer]
          #   @param channel_account_id [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
