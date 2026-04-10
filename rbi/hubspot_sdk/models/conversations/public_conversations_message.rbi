# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicConversationsMessage < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicConversationsMessage,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig do
          returns(
            T::Array[
              HubSpotSDK::Conversations::PublicConversationsMessage::Attachment::Variants
            ]
          )
        end
        attr_accessor :attachments

        sig { returns(String) }
        attr_accessor :channel_account_id

        sig { returns(String) }
        attr_accessor :channel_id

        sig { returns(HubSpotSDK::Conversations::PublicClient) }
        attr_reader :client

        sig do
          params(client: HubSpotSDK::Conversations::PublicClient::OrHash).void
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
            HubSpotSDK::Conversations::PublicConversationsMessage::Direction::TaggedSymbol
          )
        end
        attr_accessor :direction

        sig { returns(T::Array[HubSpotSDK::Conversations::PublicRecipient]) }
        attr_accessor :recipients

        sig { returns(T::Array[HubSpotSDK::Conversations::PublicSender]) }
        attr_accessor :senders

        sig { returns(String) }
        attr_accessor :text

        sig do
          returns(
            HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus::TaggedSymbol
          )
        end
        attr_accessor :truncation_status

        sig do
          returns(
            HubSpotSDK::Conversations::PublicConversationsMessage::Type::TaggedSymbol
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
          returns(T.nilable(HubSpotSDK::Conversations::PublicMessageStatus))
        end
        attr_reader :status

        sig do
          params(
            status: HubSpotSDK::Conversations::PublicMessageStatus::OrHash
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
                  HubSpotSDK::Conversations::PublicFile::OrHash,
                  HubSpotSDK::Conversations::PublicLocation::OrHash,
                  HubSpotSDK::Conversations::PublicContact::OrHash,
                  HubSpotSDK::Conversations::PublicUnsupportedContent::OrHash,
                  HubSpotSDK::Conversations::PublicMessageHeader::OrHash,
                  HubSpotSDK::Conversations::PublicQuickReplies::OrHash,
                  HubSpotSDK::Conversations::PublicWhatsAppTemplateMetadata::OrHash,
                  HubSpotSDK::Conversations::PublicSocialMetadataAttachment::OrHash
                )
              ],
            channel_account_id: String,
            channel_id: String,
            client: HubSpotSDK::Conversations::PublicClient::OrHash,
            conversations_thread_id: String,
            created_at: Time,
            created_by: String,
            direction:
              HubSpotSDK::Conversations::PublicConversationsMessage::Direction::OrSymbol,
            recipients:
              T::Array[HubSpotSDK::Conversations::PublicRecipient::OrHash],
            senders: T::Array[HubSpotSDK::Conversations::PublicSender::OrHash],
            text: String,
            truncation_status:
              HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus::OrSymbol,
            type:
              HubSpotSDK::Conversations::PublicConversationsMessage::Type::OrSymbol,
            in_reply_to_id: String,
            rich_text: String,
            status: HubSpotSDK::Conversations::PublicMessageStatus::OrHash,
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
                  HubSpotSDK::Conversations::PublicConversationsMessage::Attachment::Variants
                ],
              channel_account_id: String,
              channel_id: String,
              client: HubSpotSDK::Conversations::PublicClient,
              conversations_thread_id: String,
              created_at: Time,
              created_by: String,
              direction:
                HubSpotSDK::Conversations::PublicConversationsMessage::Direction::TaggedSymbol,
              recipients: T::Array[HubSpotSDK::Conversations::PublicRecipient],
              senders: T::Array[HubSpotSDK::Conversations::PublicSender],
              text: String,
              truncation_status:
                HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus::TaggedSymbol,
              type:
                HubSpotSDK::Conversations::PublicConversationsMessage::Type::TaggedSymbol,
              in_reply_to_id: String,
              rich_text: String,
              status: HubSpotSDK::Conversations::PublicMessageStatus,
              subject: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module Attachment
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Conversations::PublicFile,
                HubSpotSDK::Conversations::PublicLocation,
                HubSpotSDK::Conversations::PublicContact,
                HubSpotSDK::Conversations::PublicUnsupportedContent,
                HubSpotSDK::Conversations::PublicMessageHeader,
                HubSpotSDK::Conversations::PublicQuickReplies,
                HubSpotSDK::Conversations::PublicWhatsAppTemplateMetadata,
                HubSpotSDK::Conversations::PublicSocialMetadataAttachment
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicConversationsMessage::Attachment::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Direction
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::PublicConversationsMessage::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCOMING =
            T.let(
              :INCOMING,
              HubSpotSDK::Conversations::PublicConversationsMessage::Direction::TaggedSymbol
            )
          OUTGOING =
            T.let(
              :OUTGOING,
              HubSpotSDK::Conversations::PublicConversationsMessage::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicConversationsMessage::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TruncationStatus
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_TRUNCATED =
            T.let(
              :NOT_TRUNCATED,
              HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus::TaggedSymbol
            )
          TRUNCATED =
            T.let(
              :TRUNCATED,
              HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus::TaggedSymbol
            )
          TRUNCATED_TO_MOST_RECENT_REPLY =
            T.let(
              :TRUNCATED_TO_MOST_RECENT_REPLY,
              HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::PublicConversationsMessage::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGE =
            T.let(
              :MESSAGE,
              HubSpotSDK::Conversations::PublicConversationsMessage::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicConversationsMessage::Type::TaggedSymbol
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
