# typed: strong

module HubSpotSDK
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
                    HubSpotSDK::Conversations::FileAttachment::OrHash,
                    HubSpotSDK::Conversations::LocationAttachment::OrHash,
                    HubSpotSDK::Conversations::ContactAttachment::OrHash,
                    HubSpotSDK::Conversations::UnsupportedContentAttachment::OrHash,
                    HubSpotSDK::Conversations::MessageHeaderAttachment::OrHash,
                    HubSpotSDK::Conversations::QuickRepliesAttachment::OrHash,
                    HubSpotSDK::Conversations::SocialMetadataIntegrationAttachment::OrHash
                  )
                ],
              channel_account_id: String,
              message_direction:
                HubSpotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection::OrSymbol,
              recipients:
                T::Array[
                  HubSpotSDK::Conversations::ChannelIntegrationParticipant::OrHash
                ],
              senders:
                T::Array[
                  HubSpotSDK::Conversations::ChannelIntegrationParticipant::OrHash
                ],
              text: String,
              timestamp: Time,
              associate_with_contact_id: Integer,
              in_reply_to_id: String,
              integration_idempotency_id: String,
              integration_thread_id: String,
              pre_resolved_contacts:
                HubSpotSDK::Conversations::PreResolvedContacts::OrHash,
              rich_text: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Conversations::PublicConversationsMessage)
          end
          def create(
            channel_id,
            attachments:,
            channel_account_id:,
            message_direction:,
            recipients:,
            senders:,
            text:,
            timestamp:,
            associate_with_contact_id: nil,
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
                HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::OrSymbol,
              error_message: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Conversations::PublicConversationsMessage)
          end
          def update(
            # Path param
            message_id,
            # Path param
            channel_id:,
            # Body param: Valid status are SENT, FAILED, and READ
            status_type:,
            # Body param
            error_message: nil,
            request_options: {}
          )
          end

          # Get the details for a specific message sent over a custom channel
          sig do
            params(
              message_id: String,
              channel_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Conversations::PublicConversationsMessage)
          end
          def get(message_id, channel_id:, request_options: {})
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
