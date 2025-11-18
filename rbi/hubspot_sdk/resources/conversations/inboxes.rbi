# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Inboxes
        # Retrieve a list of conversations inboxes, with optional filters and sorting.
        sig do
          params(
            after: String,
            archived: T::Boolean,
            default_page_length: Integer,
            limit: Integer,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Conversations::PublicInbox]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to include archived inboxes in the response.
          archived: nil,
          # The default number of results to display per page.
          default_page_length: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # Specify the sort order for the inboxes.
          sort: nil,
          request_options: {}
        )
        end

        # Retrieve details of a single conversations inbox using the inbox ID.
        sig do
          params(
            inbox_id: Integer,
            archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicInbox)
        end
        def get(
          # The unique ID of the inbox.
          inbox_id,
          # Whether to include archived inboxes in the response.
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
