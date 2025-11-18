# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class ChannelAccounts
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Conversations::ChannelAccountListParams} for more details.
        #
        # Retrieve a list of channel accounts, with optional filters and sorting.
        #
        # @overload list(after: nil, archived: nil, channel_id: nil, default_page_length: nil, inbox_id: nil, limit: nil, sort: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to include archived channel accounts in the response.
        #
        # @param channel_id [Array<Integer>] Limits results to channel accounts within a particular channel.
        #
        # @param default_page_length [Integer] The default number of results to display per page.
        #
        # @param inbox_id [Array<Integer>] Limits results to channel accounts within a particular inbox.
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param sort [Array<String>] The sort order for the channel accounts.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Conversations::PublicChannelAccount>]
        #
        # @see HubspotSDK::Models::Conversations::ChannelAccountListParams
        def list(params = {})
          parsed, options = HubspotSDK::Conversations::ChannelAccountListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "conversations/v3/conversations/channel-accounts",
            query: parsed.transform_keys(
              channel_id: "channelId",
              default_page_length: "defaultPageLength",
              inbox_id: "inboxId"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Conversations::PublicChannelAccount,
            options: options
          )
        end

        # Retrieve details of a single channel account using the channel account ID.
        #
        # @overload get(channel_account_id, archived: nil, request_options: {})
        #
        # @param channel_account_id [Integer] The unique ID of the channel account.
        #
        # @param archived [Boolean] Whether to include archived channel accounts in the response.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicChannelAccount]
        #
        # @see HubspotSDK::Models::Conversations::ChannelAccountGetParams
        def get(channel_account_id, params = {})
          parsed, options = HubspotSDK::Conversations::ChannelAccountGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/channel-accounts/%1$s", channel_account_id],
            query: parsed,
            model: HubspotSDK::Conversations::PublicChannelAccount,
            options: options
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
