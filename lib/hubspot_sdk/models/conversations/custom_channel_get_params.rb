# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      # @see HubSpotSDK::Resources::Conversations::CustomChannels#get
      class CustomChannelGetParams < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(channel_id:, channel_account_id:, archived: nil, request_options: {})
        #   @param channel_id [Integer]
        #
        #   @param channel_account_id [Integer]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
