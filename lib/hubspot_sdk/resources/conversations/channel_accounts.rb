# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class ChannelAccounts
        # @overload list(after: nil, archived: nil, channel_id: nil, default_page_length: nil, inbox_id: nil, limit: nil, sort: nil, request_options: {})
        #
        # @param after [String]
        # @param archived [Boolean]
        # @param channel_id [Array<Integer>]
        # @param default_page_length [Integer]
        # @param inbox_id [Array<Integer>]
        # @param limit [Integer]
        # @param sort [Array<String>]
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

        # @overload get(channel_account_id, archived: nil, request_options: {})
        #
        # @param channel_account_id [Integer]
        # @param archived [Boolean]
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
