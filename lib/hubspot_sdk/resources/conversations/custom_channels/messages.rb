# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Conversations
      class CustomChannels
        class Messages
          # Publish a message over your custom channel
          #
          # @overload create(channel_id, attachments:, channel_account_id:, message_direction:, recipients:, senders:, text:, timestamp:, associate_with_contact_id: nil, in_reply_to_id: nil, integration_idempotency_id: nil, integration_thread_id: nil, pre_resolved_contacts: nil, rich_text: nil, request_options: {})
          #
          # @param channel_id [Integer]
          # @param attachments [Array<HubSpotSDK::Models::Conversations::FileAttachment, HubSpotSDK::Models::Conversations::LocationAttachment, HubSpotSDK::Models::Conversations::ContactAttachment, HubSpotSDK::Models::Conversations::UnsupportedContentAttachment, HubSpotSDK::Models::Conversations::MessageHeaderAttachment, HubSpotSDK::Models::Conversations::QuickRepliesAttachment, HubSpotSDK::Models::Conversations::SocialMetadataIntegrationAttachment>]
          # @param channel_account_id [String]
          # @param message_direction [Symbol, HubSpotSDK::Models::Conversations::ChannelIntegrationMessageEgg::MessageDirection]
          # @param recipients [Array<HubSpotSDK::Models::Conversations::ChannelIntegrationParticipant>]
          # @param senders [Array<HubSpotSDK::Models::Conversations::ChannelIntegrationParticipant>]
          # @param text [String]
          # @param timestamp [Time]
          # @param associate_with_contact_id [Integer]
          # @param in_reply_to_id [String]
          # @param integration_idempotency_id [String]
          # @param integration_thread_id [String]
          # @param pre_resolved_contacts [HubSpotSDK::Models::Conversations::PreResolvedContacts]
          # @param rich_text [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Conversations::PublicConversationsMessage]
          #
          # @see HubSpotSDK::Models::Conversations::CustomChannels::MessageCreateParams
          def create(channel_id, params)
            parsed, options = HubSpotSDK::Conversations::CustomChannels::MessageCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["conversations/custom-channels/2026-03/%1$s/messages", channel_id],
              body: parsed,
              model: HubSpotSDK::Conversations::PublicConversationsMessage,
              options: options
            )
          end

          # Update a message's status to indicate if it was successfully sent, failed to
          # send, or was read. For failed messages, this can also include the error message
          # for the failure.
          #
          # @overload update(message_id, channel_id:, status_type:, error_message: nil, request_options: {})
          #
          # @param message_id [String] Path param
          #
          # @param channel_id [Integer] Path param
          #
          # @param status_type [Symbol, HubSpotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType] Body param: Valid status are SENT, FAILED, and READ
          #
          # @param error_message [String] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Conversations::PublicConversationsMessage]
          #
          # @see HubSpotSDK::Models::Conversations::CustomChannels::MessageUpdateParams
          def update(message_id, params)
            parsed, options = HubSpotSDK::Conversations::CustomChannels::MessageUpdateParams.dump_request(params)
            channel_id =
              parsed.delete(:channel_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["conversations/custom-channels/2026-03/%1$s/messages/%2$s", channel_id, message_id],
              body: parsed,
              model: HubSpotSDK::Conversations::PublicConversationsMessage,
              options: options
            )
          end

          # Get the details for a specific message sent over a custom channel
          #
          # @overload get(message_id, channel_id:, request_options: {})
          #
          # @param message_id [String]
          # @param channel_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Conversations::PublicConversationsMessage]
          #
          # @see HubSpotSDK::Models::Conversations::CustomChannels::MessageGetParams
          def get(message_id, params)
            parsed, options = HubSpotSDK::Conversations::CustomChannels::MessageGetParams.dump_request(params)
            channel_id =
              parsed.delete(:channel_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["conversations/custom-channels/2026-03/%1$s/messages/%2$s", channel_id, message_id],
              model: HubSpotSDK::Conversations::PublicConversationsMessage,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
