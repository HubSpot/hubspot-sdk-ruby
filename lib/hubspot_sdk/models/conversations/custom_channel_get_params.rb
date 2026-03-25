# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::CustomChannels#get
      class CustomChannelGetParams < HubspotSDK::Internal::Type::BaseModel
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

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(channel_id:, channel_account_id:, archived: nil, request_options: {})
        #   @param channel_id [Integer]
        #
        #   @param channel_account_id [Integer]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
