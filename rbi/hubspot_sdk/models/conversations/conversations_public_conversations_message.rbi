# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ConversationsPublicConversationsMessage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig do
          returns(
            T::Array[
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Attachment::Variants
            ]
          )
        end
        attr_accessor :attachments

        sig { returns(String) }
        attr_accessor :channel_account_id

        sig { returns(String) }
        attr_accessor :channel_id

        sig { returns(HubspotSDK::Conversations::PublicClient) }
        attr_reader :client

        sig do
          params(client: HubspotSDK::Conversations::PublicClient::OrHash).void
        end
        attr_writer :client

        sig { returns(String) }
        attr_accessor :conversations_thread_id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :created_by

        sig do
          returns(
            HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Direction::TaggedSymbol
          )
        end
        attr_accessor :direction

        sig { returns(T::Array[HubspotSDK::Conversations::PublicRecipient]) }
        attr_accessor :recipients

        sig { returns(T::Array[HubspotSDK::Conversations::PublicSender]) }
        attr_accessor :senders

        sig { returns(String) }
        attr_accessor :text

        sig do
          returns(
            HubspotSDK::Conversations::ConversationsPublicConversationsMessage::TruncationStatus::TaggedSymbol
          )
        end
        attr_accessor :truncation_status

        sig do
          returns(
            HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :in_reply_to_id

        sig { params(in_reply_to_id: String).void }
        attr_writer :in_reply_to_id

        sig { returns(T.nilable(String)) }
        attr_reader :rich_text

        sig { params(rich_text: String).void }
        attr_writer :rich_text

        sig do
          returns(T.nilable(HubspotSDK::Conversations::PublicMessageStatus))
        end
        attr_reader :status

        sig do
          params(
            status: HubspotSDK::Conversations::PublicMessageStatus::OrHash
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            archived: T::Boolean,
            attachments:
              T::Array[
                T.any(
                  HubspotSDK::Conversations::PublicFile::OrHash,
                  HubspotSDK::Conversations::PublicLocation::OrHash,
                  HubspotSDK::Conversations::PublicContact::OrHash,
                  HubspotSDK::Conversations::PublicUnsupportedContent::OrHash,
                  HubspotSDK::Conversations::PublicMessageHeader::OrHash,
                  HubspotSDK::Conversations::PublicQuickReplies::OrHash,
                  HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata::OrHash,
                  HubspotSDK::Conversations::PublicSocialMetadataAttachment::OrHash
                )
              ],
            channel_account_id: String,
            channel_id: String,
            client: HubspotSDK::Conversations::PublicClient::OrHash,
            conversations_thread_id: String,
            created_at: Time,
            created_by: String,
            direction:
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Direction::OrSymbol,
            recipients:
              T::Array[HubspotSDK::Conversations::PublicRecipient::OrHash],
            senders: T::Array[HubspotSDK::Conversations::PublicSender::OrHash],
            text: String,
            truncation_status:
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::TruncationStatus::OrSymbol,
            type:
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Type::OrSymbol,
            in_reply_to_id: String,
            rich_text: String,
            status: HubspotSDK::Conversations::PublicMessageStatus::OrHash,
            subject: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          archived:,
          attachments:,
          channel_account_id:,
          channel_id:,
          client:,
          conversations_thread_id:,
          created_at:,
          created_by:,
          direction:,
          recipients:,
          senders:,
          text:,
          truncation_status:,
          type:,
          in_reply_to_id: nil,
          rich_text: nil,
          status: nil,
          subject: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              attachments:
                T::Array[
                  HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Attachment::Variants
                ],
              channel_account_id: String,
              channel_id: String,
              client: HubspotSDK::Conversations::PublicClient,
              conversations_thread_id: String,
              created_at: Time,
              created_by: String,
              direction:
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Direction::TaggedSymbol,
              recipients: T::Array[HubspotSDK::Conversations::PublicRecipient],
              senders: T::Array[HubspotSDK::Conversations::PublicSender],
              text: String,
              truncation_status:
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::TruncationStatus::TaggedSymbol,
              type:
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Type::TaggedSymbol,
              in_reply_to_id: String,
              rich_text: String,
              status: HubspotSDK::Conversations::PublicMessageStatus,
              subject: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module Attachment
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Conversations::PublicFile,
                HubspotSDK::Conversations::PublicLocation,
                HubspotSDK::Conversations::PublicContact,
                HubspotSDK::Conversations::PublicUnsupportedContent,
                HubspotSDK::Conversations::PublicMessageHeader,
                HubspotSDK::Conversations::PublicQuickReplies,
                HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata,
                HubspotSDK::Conversations::PublicSocialMetadataAttachment
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Attachment::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Direction
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCOMING =
            T.let(
              :INCOMING,
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Direction::TaggedSymbol
            )
          OUTGOING =
            T.let(
              :OUTGOING,
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TruncationStatus
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::TruncationStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_TRUNCATED =
            T.let(
              :NOT_TRUNCATED,
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::TruncationStatus::TaggedSymbol
            )
          TRUNCATED_TO_MOST_RECENT_REPLY =
            T.let(
              :TRUNCATED_TO_MOST_RECENT_REPLY,
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::TruncationStatus::TaggedSymbol
            )
          TRUNCATED =
            T.let(
              :TRUNCATED,
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::TruncationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::TruncationStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGE =
            T.let(
              :MESSAGE,
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ConversationsPublicConversationsMessage::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
