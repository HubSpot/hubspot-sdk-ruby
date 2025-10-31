# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Messages
        # Send a new message on a thread at the current timestamp.
        sig do
          params(
            thread_id: String,
            public_message_egg: HubspotSDK::Conversations::PublicMessageEgg,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessage::Variants)
        end
        def create(thread_id, public_message_egg:, request_options: {})
        end

        # Retrieve the message history for a specific thread.
        sig do
          params(
            thread_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging
          )
        end
        def list(thread_id, request_options: {})
        end

        # Retrieve a single message from a thread using the message ID.
        sig do
          params(
            message_id: String,
            thread_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessage::Variants)
        end
        def get(message_id, thread_id:, request_options: {})
        end

        # Returns the complete original text and rich text bodies of a message. This will
        # be different from the text and rich text in the message itself if the message's
        # `truncationStatus` is anything other than `NOT_TRUNCATED`.
        sig do
          params(
            message_id: String,
            thread_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessageContent)
        end
        def get_original_content(message_id, thread_id:, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
