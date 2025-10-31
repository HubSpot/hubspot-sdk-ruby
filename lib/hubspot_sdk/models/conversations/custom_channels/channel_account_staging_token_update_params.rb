# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccountStagingTokens#update
        class ChannelAccountStagingTokenUpdateParams < HubspotSDK::Models::Conversations::PublicChannelAccountStagingTokenUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute channel_id
          #
          #   @return [String]
          required :channel_id, String

          # @!method initialize(channel_id:, request_options: {})
          #   @param channel_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
