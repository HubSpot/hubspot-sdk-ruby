# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ChannelIntegrationMessageEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ChannelIntegrationMessageEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Conversations::FileAttachment,
                HubspotSDK::Conversations::LocationAttachment,
                HubspotSDK::Conversations::ContactAttachment,
                HubspotSDK::Conversations::UnsupportedContentAttachment,
                HubspotSDK::Conversations::MessageHeaderAttachment,
                HubspotSDK::Conversations::QuickRepliesAttachment,
                HubspotSDK::Conversations::SocialMetadataIntegrationAttachment
              )
            ]
          )
        end
        attr_accessor :attachments

        sig { returns(String) }
        attr_accessor :channel_account_id

        sig do
          returns(
            HubspotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection::OrSymbol
          )
        end
        attr_accessor :message_direction

        sig do
          returns(
            T::Array[HubspotSDK::Conversations::ChannelIntegrationParticipant]
          )
        end
        attr_accessor :recipients

        sig do
          returns(
            T::Array[HubspotSDK::Conversations::ChannelIntegrationParticipant]
          )
        end
        attr_accessor :senders

        sig { returns(String) }
        attr_accessor :text

        sig { returns(Time) }
        attr_accessor :timestamp

        sig { returns(T.nilable(Integer)) }
        attr_reader :associate_with_contact_id

        sig { params(associate_with_contact_id: Integer).void }
        attr_writer :associate_with_contact_id

        sig { returns(T.nilable(String)) }
        attr_reader :in_reply_to_id

        sig { params(in_reply_to_id: String).void }
        attr_writer :in_reply_to_id

        sig { returns(T.nilable(String)) }
        attr_reader :integration_idempotency_id

        sig { params(integration_idempotency_id: String).void }
        attr_writer :integration_idempotency_id

        sig { returns(T.nilable(String)) }
        attr_reader :integration_thread_id

        sig { params(integration_thread_id: String).void }
        attr_writer :integration_thread_id

        sig do
          returns(T.nilable(HubspotSDK::Conversations::PreResolvedContacts))
        end
        attr_reader :pre_resolved_contacts

        sig do
          params(
            pre_resolved_contacts:
              HubspotSDK::Conversations::PreResolvedContacts::OrHash
          ).void
        end
        attr_writer :pre_resolved_contacts

        sig { returns(T.nilable(String)) }
        attr_reader :rich_text

        sig { params(rich_text: String).void }
        attr_writer :rich_text

        sig do
          params(
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
            associate_with_contact_id: Integer,
            in_reply_to_id: String,
            integration_idempotency_id: String,
            integration_thread_id: String,
            pre_resolved_contacts:
              HubspotSDK::Conversations::PreResolvedContacts::OrHash,
            rich_text: String
          ).returns(T.attached_class)
        end
        def self.new(
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
          rich_text: nil
        )
        end

        sig do
          override.returns(
            {
              attachments:
                T::Array[
                  T.any(
                    HubspotSDK::Conversations::FileAttachment,
                    HubspotSDK::Conversations::LocationAttachment,
                    HubspotSDK::Conversations::ContactAttachment,
                    HubspotSDK::Conversations::UnsupportedContentAttachment,
                    HubspotSDK::Conversations::MessageHeaderAttachment,
                    HubspotSDK::Conversations::QuickRepliesAttachment,
                    HubspotSDK::Conversations::SocialMetadataIntegrationAttachment
                  )
                ],
              channel_account_id: String,
              message_direction:
                HubspotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection::OrSymbol,
              recipients:
                T::Array[
                  HubspotSDK::Conversations::ChannelIntegrationParticipant
                ],
              senders:
                T::Array[
                  HubspotSDK::Conversations::ChannelIntegrationParticipant
                ],
              text: String,
              timestamp: Time,
              associate_with_contact_id: Integer,
              in_reply_to_id: String,
              integration_idempotency_id: String,
              integration_thread_id: String,
              pre_resolved_contacts:
                HubspotSDK::Conversations::PreResolvedContacts,
              rich_text: String
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
                HubspotSDK::Conversations::FileAttachment,
                HubspotSDK::Conversations::LocationAttachment,
                HubspotSDK::Conversations::ContactAttachment,
                HubspotSDK::Conversations::UnsupportedContentAttachment,
                HubspotSDK::Conversations::MessageHeaderAttachment,
                HubspotSDK::Conversations::QuickRepliesAttachment,
                HubspotSDK::Conversations::SocialMetadataIntegrationAttachment
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ChannelIntegrationMessageEgg::Attachment::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module MessageDirection
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCOMING =
            T.let(
              :INCOMING,
              HubspotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection::TaggedSymbol
            )
          OUTGOING =
            T.let(
              :OUTGOING,
              HubspotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection::TaggedSymbol
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
