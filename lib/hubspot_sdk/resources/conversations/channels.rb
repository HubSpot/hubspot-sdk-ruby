# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Channels
        # @overload list(after: nil, default_page_length: nil, limit: nil, sort: nil, request_options: {})
        #
        # @param after [String]
        # @param default_page_length [Integer]
        # @param limit [Integer]
        # @param sort [Array<String>]
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

        # @overload get(channel_id, request_options: {})
        #
        # @param channel_id [Integer]
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
