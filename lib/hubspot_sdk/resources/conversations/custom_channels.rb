# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        # @return [HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccountStagingTokens]
        attr_reader :channel_account_staging_tokens

        # @return [HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccounts]
        attr_reader :channel_accounts

        # @return [HubspotSDK::Resources::Conversations::CustomChannels::Messages]
        attr_reader :messages

        # Register a new channel along with its capabilities and the webhook url that will
        # be used to receive messages published over the channel
        #
        # @overload create(capabilities:, name:, channel_account_connection_redirect_url: nil, channel_description: nil, channel_logo_url: nil, webhook_url: nil, request_options: {})
        #
        # @param capabilities [Hash{Symbol=>Object}]
        # @param name [String]
        # @param channel_account_connection_redirect_url [String]
        # @param channel_description [String]
        # @param channel_logo_url [String]
        # @param webhook_url [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicChannelIntegrationChannel]
        #
        # @see HubspotSDK::Models::Conversations::CustomChannelCreateParams
        def create(params)
          parsed, options = HubspotSDK::Conversations::CustomChannelCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "conversations/v3/custom-channels/",
            body: parsed,
            model: HubspotSDK::Conversations::PublicChannelIntegrationChannel,
            options: options
          )
        end

        # Update the capabilities for an existing. You can also use it to update the
        # channel's webhookUri and its channelAccountConnectionRedirectUrl.
        #
        # @overload update(channel_id, capabilities:, channel_description:, channel_logo_url:, channel_account_connection_redirect_url: nil, name: nil, webhook_url: nil, request_options: {})
        #
        # @param channel_id [String]
        # @param capabilities [Hash{Symbol=>Object}]
        # @param channel_description [Object]
        # @param channel_logo_url [Object]
        # @param channel_account_connection_redirect_url [Object]
        # @param name [Object]
        # @param webhook_url [Object]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicChannelIntegrationChannel]
        #
        # @see HubspotSDK::Models::Conversations::CustomChannelUpdateParams
        def update(channel_id, params)
          parsed, options = HubspotSDK::Conversations::CustomChannelUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["conversations/v3/custom-channels/%1$s", channel_id],
            body: parsed,
            model: HubspotSDK::Conversations::PublicChannelIntegrationChannel,
            options: options
          )
        end

        # Retrieve all custom channels associated with the app.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::CollectionResponseWithTotalPublicChannelIntegrationChannelForwardPaging]
        #
        # @see HubspotSDK::Models::Conversations::CustomChannelListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "conversations/v3/custom-channels/",
            model: HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelIntegrationChannelForwardPaging,
            options: params[:request_options]
          )
        end

        # Archive an existing registered custom channel
        #
        # @overload delete(channel_id, request_options: {})
        #
        # @param channel_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Conversations::CustomChannelDeleteParams
        def delete(channel_id, params = {})
          @client.request(
            method: :delete,
            path: ["conversations/v3/custom-channels/%1$s", channel_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve the details about a custom channel. This API allows you to see a custom
        # channel's current capabilties and other configuration metadata
        #
        # @overload get(channel_id, request_options: {})
        #
        # @param channel_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicChannelIntegrationChannel]
        #
        # @see HubspotSDK::Models::Conversations::CustomChannelGetParams
        def get(channel_id, params = {})
          @client.request(
            method: :get,
            path: ["conversations/v3/custom-channels/%1$s", channel_id],
            model: HubspotSDK::Conversations::PublicChannelIntegrationChannel,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @channel_account_staging_tokens =
            HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccountStagingTokens.new(client: client)
          @channel_accounts =
            HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccounts.new(client: client)
          @messages = HubspotSDK::Resources::Conversations::CustomChannels::Messages.new(client: client)
        end
      end
    end
  end
end
