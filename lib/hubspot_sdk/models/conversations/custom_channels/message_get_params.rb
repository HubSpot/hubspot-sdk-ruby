# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubSpotSDK::Resources::Conversations::CustomChannels::Messages#get
        class MessageGetParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

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
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
