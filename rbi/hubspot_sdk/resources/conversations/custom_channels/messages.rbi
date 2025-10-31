# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        class Messages
          # Publish a message over your custom channel
          sig do
            params(
              channel_id: String,
              attachments:
                T::Array[
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::OrHash
                  )
                ],
              channel_account_id: String,
              integration_thread_id: String,
              message_direction:
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection::OrSymbol,
              recipients:
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Recipient::OrHash
                ],
              senders:
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Sender::OrHash
                ],
              text: String,
              timestamp: Time,
              in_reply_to_id: String,
              integration_idempotency_id: String,
              pre_resolved_contacts:
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::OrHash,
              rich_text: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicConversationsMessage)
          end
          def create(
            channel_id,
            attachments:,
            channel_account_id:,
            integration_thread_id:,
            message_direction:,
            recipients:,
            senders:,
            text:,
            timestamp:,
            in_reply_to_id: nil,
            integration_idempotency_id: nil,
            pre_resolved_contacts: nil,
            rich_text: nil,
            request_options: {}
          )
          end

          # Update a message's status to indicate if it was successfully sent, failed to
          # send, or was read. For failed messages, this can also include the error message
          # for the failure.
          sig do
            params(
              message_id: String,
              channel_id: String,
              status_type:
                HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType::OrSymbol,
              error_message: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicConversationsMessage)
          end
          def update(
            # Path param:
            message_id,
            # Path param:
            channel_id:,
            # Body param: Valid status are SENT, FAILED, and READ
            status_type:,
            # Body param:
            error_message: nil,
            request_options: {}
          )
          end

          # Get the details for a specific message sent over a custom channel
          sig do
            params(
              message_id: String,
              channel_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicConversationsMessage)
          end
          def get(message_id, channel_id:, request_options: {})
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
