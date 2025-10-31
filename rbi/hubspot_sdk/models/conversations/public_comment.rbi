# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicComment < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicComment,
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
              HubspotSDK::Conversations::PublicComment::Attachment::Variants
            ]
          )
        end
        attr_accessor :attachments

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

        sig { returns(T::Array[HubspotSDK::Conversations::PublicRecipient]) }
        attr_accessor :recipients

        sig { returns(String) }
        attr_accessor :rich_text

        sig { returns(T::Array[HubspotSDK::Conversations::PublicSender]) }
        attr_accessor :senders

        sig { returns(String) }
        attr_accessor :text

        sig do
          returns(HubspotSDK::Conversations::PublicComment::Type::TaggedSymbol)
        end
        attr_accessor :type

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
            client: HubspotSDK::Conversations::PublicClient::OrHash,
            conversations_thread_id: String,
            created_at: Time,
            created_by: String,
            recipients:
              T::Array[HubspotSDK::Conversations::PublicRecipient::OrHash],
            rich_text: String,
            senders: T::Array[HubspotSDK::Conversations::PublicSender::OrHash],
            text: String,
            type: HubspotSDK::Conversations::PublicComment::Type::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          archived:,
          attachments:,
          client:,
          conversations_thread_id:,
          created_at:,
          created_by:,
          recipients:,
          rich_text:,
          senders:,
          text:,
          type:,
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
                  HubspotSDK::Conversations::PublicComment::Attachment::Variants
                ],
              client: HubspotSDK::Conversations::PublicClient,
              conversations_thread_id: String,
              created_at: Time,
              created_by: String,
              recipients: T::Array[HubspotSDK::Conversations::PublicRecipient],
              rich_text: String,
              senders: T::Array[HubspotSDK::Conversations::PublicSender],
              text: String,
              type:
                HubspotSDK::Conversations::PublicComment::Type::TaggedSymbol,
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
                HubspotSDK::Conversations::PublicComment::Attachment::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::PublicComment::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMENT =
            T.let(
              :COMMENT,
              HubspotSDK::Conversations::PublicComment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicComment::Type::TaggedSymbol
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
