# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Messages
        # Send a new message on a thread at the current timestamp.
        #
        # @overload create(thread_id, public_message_egg:, request_options: {})
        #
        # @param thread_id [String]
        # @param public_message_egg [HubspotSDK::Conversations::PublicMessageEgg]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::ConversationsPublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange]
        #
        # @see HubspotSDK::Models::Conversations::MessageCreateParams
        def create(thread_id, params)
          @client.request(
            method: :post,
            path: ["conversations/v3/conversations/threads/%1$s/messages", thread_id],
            model: HubspotSDK::Conversations::PublicMessage,
            options: params[:request_options]
          )
        end

        # Retrieve the message history for a specific thread.
        #
        # @overload list(thread_id, request_options: {})
        #
        # @param thread_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::CollectionResponsePublicMessageForwardPaging]
        #
        # @see HubspotSDK::Models::Conversations::MessageListParams
        def list(thread_id, params = {})
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/threads/%1$s/messages", thread_id],
            model: HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging,
            options: params[:request_options]
          )
        end

        # Retrieve a single message from a thread using the message ID.
        #
        # @overload get(message_id, thread_id:, request_options: {})
        #
        # @param message_id [String]
        # @param thread_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::ConversationsPublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange]
        #
        # @see HubspotSDK::Models::Conversations::MessageGetParams
        def get(message_id, params)
          parsed, options = HubspotSDK::Conversations::MessageGetParams.dump_request(params)
          thread_id =
            parsed.delete(:thread_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/threads/%1$s/messages/%2$s", thread_id, message_id],
            model: HubspotSDK::Conversations::PublicMessage,
            options: options
          )
        end

        # Returns the complete original text and rich text bodies of a message. This will
        # be different from the text and rich text in the message itself if the message's
        # `truncationStatus` is anything other than `NOT_TRUNCATED`.
        #
        # @overload get_original_content(message_id, thread_id:, request_options: {})
        #
        # @param message_id [String]
        # @param thread_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicMessageContent]
        #
        # @see HubspotSDK::Models::Conversations::MessageGetOriginalContentParams
        def get_original_content(message_id, params)
          parsed, options = HubspotSDK::Conversations::MessageGetOriginalContentParams.dump_request(params)
          thread_id =
            parsed.delete(:thread_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "conversations/v3/conversations/threads/%1$s/messages/%2$s/original-content",
              thread_id,
              message_id
            ],
            model: HubspotSDK::Conversations::PublicMessageContent,
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
