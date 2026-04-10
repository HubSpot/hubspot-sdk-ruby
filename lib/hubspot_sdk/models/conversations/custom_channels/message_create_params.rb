# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubSpotSDK::Resources::Conversations::CustomChannels::Messages#create
        class MessageCreateParams < HubSpotSDK::Models::Conversations::ChannelIntegrationMessageEgg
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute channel_id
          #
          #   @return [Integer]
          required :channel_id, Integer

          # @!method initialize(channel_id:, request_options: {})
          #   @param channel_id [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
