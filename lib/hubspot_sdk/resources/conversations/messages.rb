# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Messages
        # @overload create(thread_id, public_message_egg:, request_options: {})
        #
        # @param thread_id [Integer]
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

        # @overload list(thread_id, after: nil, archived: nil, limit: nil, property: nil, sort: nil, request_options: {})
        #
        # @param thread_id [Integer]
        # @param after [String]
        # @param archived [Boolean]
        # @param limit [Integer]
        # @param property [String]
        # @param sort [Array<String>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Conversations::ConversationsPublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange>]
        #
        # @see HubspotSDK::Models::Conversations::MessageListParams
        def list(thread_id, params = {})
          parsed, options = HubspotSDK::Conversations::MessageListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/threads/%1$s/messages", thread_id],
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging::Result,
            options: options
          )
        end

        # @overload get(message_id, thread_id:, property: nil, request_options: {})
        #
        # @param message_id [String] Path param:
        #
        # @param thread_id [Integer] Path param:
        #
        # @param property [String] Query param:
        #
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
            query: parsed,
            model: HubspotSDK::Conversations::PublicMessage,
            options: options
          )
        end

        # @overload get_original_content(message_id, thread_id:, property: nil, request_options: {})
        #
        # @param message_id [String] Path param:
        #
        # @param thread_id [Integer] Path param:
        #
        # @param property [String] Query param:
        #
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
            query: parsed,
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
