# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Conversations
      class CustomChannels
        # @return [HubSpotSDK::Resources::Conversations::CustomChannels::ChannelAccounts]
        attr_reader :channel_accounts

        # @return [HubSpotSDK::Resources::Conversations::CustomChannels::Messages]
        attr_reader :messages

        # @overload create(capabilities:, name:, channel_account_connection_redirect_url: nil, channel_description: nil, channel_logo_url: nil, webhook_url: nil, request_options: {})
        #
        # @param capabilities [Hash{Symbol=>Object}]
        # @param name [String]
        # @param channel_account_connection_redirect_url [String]
        # @param channel_description [String]
        # @param channel_logo_url [String]
        # @param webhook_url [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Conversations::PublicChannelIntegrationChannel]
        #
        # @see HubSpotSDK::Models::Conversations::CustomChannelCreateParams
        def create(params)
          parsed, options = HubSpotSDK::Conversations::CustomChannelCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "conversations/custom-channels/2026-03",
            body: parsed,
            model: HubSpotSDK::Conversations::PublicChannelIntegrationChannel,
            options: options
          )
        end

        # Update the capabilities for an existing. You can also use it to update the
        # channel's webhookUri and its channelAccountConnectionRedirectUrl.
        #
        # @overload update(channel_id, capabilities:, channel_account_connection_redirect_url:, channel_description:, channel_logo_url:, name:, webhook_url:, request_options: {})
        #
        # @param channel_id [Integer]
        # @param capabilities [Hash{Symbol=>Object}]
        # @param channel_account_connection_redirect_url [Object]
        # @param channel_description [Object]
        # @param channel_logo_url [Object]
        # @param name [Object]
        # @param webhook_url [Object]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Conversations::PublicChannelIntegrationChannel]
        #
        # @see HubSpotSDK::Models::Conversations::CustomChannelUpdateParams
        def update(channel_id, params)
          parsed, options = HubSpotSDK::Conversations::CustomChannelUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["conversations/custom-channels/2026-03/%1$s", channel_id],
            body: parsed,
            model: HubSpotSDK::Conversations::PublicChannelIntegrationChannel,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Conversations::CustomChannelListParams} for more details.
        #
        # @overload list(after: nil, default_page_length: nil, limit: nil, sort: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param default_page_length [Integer]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param sort [Array<String>]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Conversations::PublicChannelIntegrationChannel>]
        #
        # @see HubSpotSDK::Models::Conversations::CustomChannelListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Conversations::CustomChannelListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "conversations/custom-channels/2026-03",
            query: query.transform_keys(default_page_length: "defaultPageLength"),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Conversations::PublicChannelIntegrationChannel,
            options: options
          )
        end

        # Archive an existing registered custom channel
        #
        # @overload delete(channel_id, request_options: {})
        #
        # @param channel_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Conversations::CustomChannelDeleteParams
        def delete(channel_id, params = {})
          @client.request(
            method: :delete,
            path: ["conversations/custom-channels/2026-03/%1$s", channel_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve the details for a specific channel account. This contains all the
        # metadata about your channel account, including its channel, associated inbox id,
        # and delivery identifier information.
        #
        # @overload get(channel_account_id, channel_id:, archived: nil, request_options: {})
        #
        # @param channel_account_id [Integer] Path param
        #
        # @param channel_id [Integer] Path param
        #
        # @param archived [Boolean] Query param: Whether to return only results that have been archived.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Conversations::PublicChannelAccount]
        #
        # @see HubSpotSDK::Models::Conversations::CustomChannelGetParams
        def get(channel_account_id, params)
          parsed, options = HubSpotSDK::Conversations::CustomChannelGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          channel_id =
            parsed.delete(:channel_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "conversations/custom-channels/2026-03/%1$s/channel-accounts/%2$s",
              channel_id,
              channel_account_id
            ],
            query: query,
            model: HubSpotSDK::Conversations::PublicChannelAccount,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @channel_accounts =
            HubSpotSDK::Resources::Conversations::CustomChannels::ChannelAccounts.new(client: client)
          @messages = HubSpotSDK::Resources::Conversations::CustomChannels::Messages.new(client: client)
        end
      end
    end
  end
end
