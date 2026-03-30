# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
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

        sig do
          params(
            capabilities: T::Hash[Symbol, T.anything],
            name: String,
            channel_account_connection_redirect_url: String,
            channel_description: String,
            channel_logo_url: String,
            webhook_url: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicChannelIntegrationChannel)
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
            channel_id: Integer,
            capabilities: T::Hash[Symbol, T.anything],
            channel_account_connection_redirect_url: T.anything,
            channel_description: T.anything,
            channel_logo_url: T.anything,
            name: T.anything,
            webhook_url: T.anything,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicChannelIntegrationChannel)
        end
        def update(
          channel_id,
          capabilities:,
          channel_account_connection_redirect_url:,
          channel_description:,
          channel_logo_url:,
          name:,
          webhook_url:,
          request_options: {}
        )
        end

        sig do
          params(
            after: String,
            default_page_length: Integer,
            limit: Integer,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Conversations::PublicChannelIntegrationChannel
            ]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          default_page_length: nil,
          # The maximum number of results to display per page.
          limit: nil,
          sort: nil,
          request_options: {}
        )
        end

        # Archive an existing registered custom channel
        sig do
          params(
            channel_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(channel_id, request_options: {})
        end

        # Retrieve the details for a specific channel account. This contains all the
        # metadata about your channel account, including its channel, associated inbox id,
        # and delivery identifier information.
        sig do
          params(
            channel_account_id: Integer,
            channel_id: Integer,
            archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicChannelAccount)
        end
        def get(
          # Path param
          channel_account_id,
          # Path param
          channel_id:,
          # Query param: Whether to return only results that have been archived.
          archived: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
