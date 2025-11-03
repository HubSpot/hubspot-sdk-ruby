# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class ChannelAccounts
        # Retrieve a list of channel accounts, with optional filters and sorting.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::CollectionResponseWithTotalPublicChannelAccountForwardPaging]
        #
        # @see HubspotSDK::Models::Conversations::ChannelAccountListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "conversations/v3/conversations/channel-accounts",
            model: HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelAccountForwardPaging,
            options: params[:request_options]
          )
        end

        # Retrieve details of a single channel account using the channel account ID.
        #
        # @overload get(channel_account_id, request_options: {})
        #
        # @param channel_account_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::ConversationsPublicChannelAccount]
        #
        # @see HubspotSDK::Models::Conversations::ChannelAccountGetParams
        def get(channel_account_id, params = {})
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/channel-accounts/%1$s", channel_account_id],
            model: HubspotSDK::Conversations::ConversationsPublicChannelAccount,
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
