# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccounts#update
        class ChannelAccountUpdateParams < HubspotSDK::Models::Conversations::PublicChannelAccountUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
