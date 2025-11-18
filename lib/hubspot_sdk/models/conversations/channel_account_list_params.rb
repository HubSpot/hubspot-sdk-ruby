# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::ChannelAccounts#list
      class ChannelAccountListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #   Whether to include archived channel accounts in the response.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute channel_id
        #   Limits results to channel accounts within a particular channel.
        #
        #   @return [Array<Integer>, nil]
        optional :channel_id, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute default_page_length
        #   The default number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :default_page_length, Integer

        # @!attribute inbox_id
        #   Limits results to channel accounts within a particular inbox.
        #
        #   @return [Array<Integer>, nil]
        optional :inbox_id, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute sort
        #   The sort order for the channel accounts.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(after: nil, archived: nil, channel_id: nil, default_page_length: nil, inbox_id: nil, limit: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::ChannelAccountListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param archived [Boolean] Whether to include archived channel accounts in the response.
        #
        #   @param channel_id [Array<Integer>] Limits results to channel accounts within a particular channel.
        #
        #   @param default_page_length [Integer] The default number of results to display per page.
        #
        #   @param inbox_id [Array<Integer>] Limits results to channel accounts within a particular inbox.
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param sort [Array<String>] The sort order for the channel accounts.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
