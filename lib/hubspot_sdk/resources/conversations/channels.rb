# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Channels
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Conversations::ChannelListParams} for more details.
        #
        # Retrieve a list of channels, with optional filters and sorting.
        #
        # @overload list(after: nil, default_page_length: nil, limit: nil, sort: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param default_page_length [Integer] The default number of results to display per page.
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param sort [Array<String>] Specify the sort order for the channels.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Conversations::PublicChannel>]
        #
        # @see HubspotSDK::Models::Conversations::ChannelListParams
        def list(params = {})
          parsed, options = HubspotSDK::Conversations::ChannelListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "conversations/v3/conversations/channels",
            query: parsed.transform_keys(default_page_length: "defaultPageLength"),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Conversations::PublicChannel,
            options: options
          )
        end

        # Retrieve details of a single channel using the channel ID.
        #
        # @overload get(channel_id, request_options: {})
        #
        # @param channel_id [Integer] The unique ID of the channel.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicChannel]
        #
        # @see HubspotSDK::Models::Conversations::ChannelGetParams
        def get(channel_id, params = {})
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/channels/%1$s", channel_id],
            model: HubspotSDK::Conversations::PublicChannel,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
