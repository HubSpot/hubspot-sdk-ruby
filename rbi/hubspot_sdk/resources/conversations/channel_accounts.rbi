# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class ChannelAccounts
        # Retrieve a list of channel accounts, with optional filters and sorting.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelAccountForwardPaging
          )
        end
        def list(request_options: {})
        end

        # Retrieve details of a single channel account using the channel account ID.
        sig do
          params(
            channel_account_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Conversations::ConversationsPublicChannelAccount
          )
        end
        def get(channel_account_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
