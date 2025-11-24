# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        class Messages
          # Publish a message over your custom channel
          sig do
            params(
              channel_id: Integer,
              attachments:
                T::Array[
                  T.any(
                    HubspotSDK::Conversations::FileAttachment::OrHash,
                    HubspotSDK::Conversations::LocationAttachment::OrHash,
                    HubspotSDK::Conversations::ContactAttachment::OrHash,
                    HubspotSDK::Conversations::UnsupportedContentAttachment::OrHash,
                    HubspotSDK::Conversations::MessageHeaderAttachment::OrHash,
                    HubspotSDK::Conversations::QuickRepliesAttachment::OrHash,
                    HubspotSDK::Conversations::SocialMetadataIntegrationAttachment::OrHash
                  )
                ],
              channel_account_id: String,
              message_direction:
                HubspotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection::OrSymbol,
              recipients:
                T::Array[
                  HubspotSDK::Conversations::ChannelIntegrationParticipant::OrHash
                ],
              senders:
                T::Array[
                  HubspotSDK::Conversations::ChannelIntegrationParticipant::OrHash
                ],
              text: String,
              timestamp: Time,
              in_reply_to_id: String,
              integration_idempotency_id: String,
              integration_thread_id: String,
              pre_resolved_contacts:
                HubspotSDK::Conversations::PreResolvedContacts::OrHash,
              rich_text: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicConversationsMessage)
          end
          def create(
            # The channel the message will be sent over
            channel_id,
            attachments:,
            channel_account_id:,
            message_direction:,
            recipients:,
            senders:,
            text:,
            timestamp:,
            in_reply_to_id: nil,
            integration_idempotency_id: nil,
            integration_thread_id: nil,
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
              channel_id: Integer,
              status_type:
                HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::OrSymbol,
              error_message: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicConversationsMessage)
          end
          def update(
            # Path param: The id of the message
            message_id,
            # Path param: The channel the message was sent over
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
              channel_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicConversationsMessage)
          end
          def get(
            # The id of the message
            message_id,
            # The channel the message was sent over
            channel_id:,
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
end
