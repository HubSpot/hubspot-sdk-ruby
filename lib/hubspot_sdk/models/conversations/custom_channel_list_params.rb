# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      # @see HubSpotSDK::Resources::Conversations::CustomChannels#list
      class CustomChannelListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute default_page_length
        #
        #   @return [Integer, nil]
        optional :default_page_length, Integer

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(after: nil, default_page_length: nil, limit: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Conversations::CustomChannelListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param default_page_length [Integer]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param sort [Array<String>]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
