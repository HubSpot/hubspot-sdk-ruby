# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::Messages#update
        class MessageUpdateParams < HubspotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute channel_id
          #
          #   @return [Integer]
          required :channel_id, Integer

          # @!attribute message_id
          #
          #   @return [String]
          required :message_id, String

          # @!method initialize(channel_id:, message_id:, request_options: {})
          #   @param channel_id [Integer]
          #   @param message_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
