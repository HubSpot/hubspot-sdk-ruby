# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Messages
        # Send a new message on a thread at the current timestamp.
        sig do
          params(
            thread_id: Integer,
            public_message_egg: HubspotSDK::Conversations::PublicMessageEgg,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessage::Variants)
        end
        def create(
          # The unique ID of the thread.
          thread_id,
          public_message_egg:,
          request_options: {}
        )
        end

        # Retrieve the message history for a specific thread.
        sig do
          params(
            thread_id: Integer,
            after: String,
            archived: T::Boolean,
            limit: Integer,
            property: String,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging::Result::Variants
            ]
          )
        end
        def list(
          # The unique ID of the thread.
          thread_id,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # A specific property to include in the message response.
          property: nil,
          # Sort direction. Valid options are `createdAt` (ascending), and `-createdAt`
          # (descending, default)
          sort: nil,
          request_options: {}
        )
        end

        # Retrieve a single message from a thread using the message ID.
        sig do
          params(
            message_id: String,
            thread_id: Integer,
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessage::Variants)
        end
        def get(
          # Path param: The unique ID of the message.
          message_id,
          # Path param: The unique ID of the thread.
          thread_id:,
          # Query param: A specific property to include in the message response.
          property: nil,
          request_options: {}
        )
        end

        # Returns the complete original text and rich text bodies of a message. This will
        # be different from the text and rich text in the message itself if the message's
        # `truncationStatus` is anything other than `NOT_TRUNCATED`.
        sig do
          params(
            message_id: String,
            thread_id: Integer,
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessageContent)
        end
        def get_original_content(
          # Path param: The unique ID of the message.
          message_id,
          # Path param: The unique ID of the thread.
          thread_id:,
          # Query param: A specific property to include in the original content response.
          property: nil,
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
