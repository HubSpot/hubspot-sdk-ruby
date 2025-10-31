# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Channels
        # Retrieve a list of channels, with optional filters and sorting.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::CollectionResponseWithTotalPublicChannelForwardPaging]
        #
        # @see HubspotSDK::Models::Conversations::ChannelListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "conversations/v3/conversations/channels",
            model: HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelForwardPaging,
            options: params[:request_options]
          )
        end

        # Retrieve details of a single channel using the channel ID.
        #
        # @overload get(channel_id, request_options: {})
        #
        # @param channel_id [String]
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
