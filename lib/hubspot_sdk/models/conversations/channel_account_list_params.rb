# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::ChannelAccounts#list
      class ChannelAccountListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute channel_id
        #
        #   @return [Array<Integer>, nil]
        optional :channel_id, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute default_page_length
        #
        #   @return [Integer, nil]
        optional :default_page_length, Integer

        # @!attribute inbox_id
        #
        #   @return [Array<Integer>, nil]
        optional :inbox_id, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(after: nil, archived: nil, channel_id: nil, default_page_length: nil, inbox_id: nil, limit: nil, sort: nil, request_options: {})
        #   @param after [String]
        #   @param archived [Boolean]
        #   @param channel_id [Array<Integer>]
        #   @param default_page_length [Integer]
        #   @param inbox_id [Array<Integer>]
        #   @param limit [Integer]
        #   @param sort [Array<String>]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
