# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        sig do
          returns(
            HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccountStagingTokens
          )
        end
        attr_reader :channel_account_staging_tokens

        sig do
          returns(
            HubspotSDK::Resources::Conversations::CustomChannels::ChannelAccounts
          )
        end
        attr_reader :channel_accounts

        sig do
          returns(
            HubspotSDK::Resources::Conversations::CustomChannels::Messages
          )
        end
        attr_reader :messages

        # Register a new channel along with its capabilities and the webhook url that will
        # be used to receive messages published over the channel
        sig do
          params(
            capabilities: T::Hash[Symbol, T.anything],
            name: String,
            channel_account_connection_redirect_url: String,
            channel_description: String,
            channel_logo_url: String,
            webhook_url: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Models::Conversations::CustomChannelCreateResponse
          )
        end
        def create(
          capabilities:,
          name:,
          channel_account_connection_redirect_url: nil,
          channel_description: nil,
          channel_logo_url: nil,
          webhook_url: nil,
          request_options: {}
        )
        end

        # Update the capabilities for an existing. You can also use it to update the
        # channel's webhookUri and its channelAccountConnectionRedirectUrl.
        sig do
          params(
            channel_id: String,
            capabilities: T::Hash[Symbol, T.anything],
            channel_description: T.anything,
            channel_logo_url: T.anything,
            channel_account_connection_redirect_url: T.anything,
            name: T.anything,
            webhook_url: T.anything,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Models::Conversations::CustomChannelUpdateResponse
          )
        end
        def update(
          channel_id,
          capabilities:,
          channel_description:,
          channel_logo_url:,
          channel_account_connection_redirect_url: nil,
          name: nil,
          webhook_url: nil,
          request_options: {}
        )
        end

        # Retrieve all custom channels associated with the app.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Models::Conversations::CustomChannelListResponse
          )
        end
        def list(request_options: {})
        end

        # Archive an existing registered custom channel
        sig do
          params(
            channel_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(channel_id, request_options: {})
        end

        # Retrieve the details about a custom channel. This API allows you to see a custom
        # channel's current capabilties and other configuration metadata
        sig do
          params(
            channel_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Models::Conversations::CustomChannelGetResponse)
        end
        def get(channel_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
