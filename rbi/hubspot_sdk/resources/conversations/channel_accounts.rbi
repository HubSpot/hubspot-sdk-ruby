# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class ChannelAccounts
        # Retrieve a list of channel accounts, with optional filters and sorting.
        sig do
          params(
            after: String,
            archived: T::Boolean,
            channel_id: T::Array[Integer],
            default_page_length: Integer,
            inbox_id: T::Array[Integer],
            limit: Integer,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Conversations::PublicChannelAccount
            ]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to include archived channel accounts in the response.
          archived: nil,
          # Limits results to channel accounts within a particular channel.
          channel_id: nil,
          # The default number of results to display per page.
          default_page_length: nil,
          # Limits results to channel accounts within a particular inbox.
          inbox_id: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # The sort order for the channel accounts.
          sort: nil,
          request_options: {}
        )
        end

        # Retrieve details of a single channel account using the channel account ID.
        sig do
          params(
            channel_account_id: Integer,
            archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicChannelAccount)
        end
        def get(
          # The unique ID of the channel account.
          channel_account_id,
          # Whether to include archived channel accounts in the response.
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
