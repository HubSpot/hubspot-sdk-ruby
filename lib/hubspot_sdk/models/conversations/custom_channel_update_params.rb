# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::CustomChannels#update
      class CustomChannelUpdateParams < HubspotSDK::Models::Conversations::PublicChannelIntegrationChannelPatch
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute channel_id
        #
        #   @return [Integer]
        required :channel_id, Integer

        # @!method initialize(channel_id:, request_options: {})
        #   @param channel_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
