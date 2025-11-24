# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicConversationsMessageEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicConversationsMessageEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Conversations::PublicFileEgg,
                HubspotSDK::Conversations::PublicQuickRepliesEgg,
                HubspotSDK::Conversations::PublicSocialMediaEgg
              )
            ]
          )
        end
        attr_accessor :attachments

        sig { returns(String) }
        attr_accessor :channel_account_id

        sig { returns(String) }
        attr_accessor :channel_id

        sig { returns(T::Array[HubspotSDK::Conversations::PublicRecipientEgg]) }
        attr_accessor :recipients

        sig { returns(String) }
        attr_accessor :sender_actor_id

        sig { returns(String) }
        attr_accessor :text

        sig do
          returns(
            HubspotSDK::Conversations::PublicConversationsMessageEgg::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :rich_text

        sig { params(rich_text: String).void }
        attr_writer :rich_text

        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        sig do
          params(
            attachments:
              T::Array[
                T.any(
                  HubspotSDK::Conversations::PublicFileEgg::OrHash,
                  HubspotSDK::Conversations::PublicQuickRepliesEgg::OrHash,
                  HubspotSDK::Conversations::PublicSocialMediaEgg::OrHash
                )
              ],
            channel_account_id: String,
            channel_id: String,
            recipients:
              T::Array[HubspotSDK::Conversations::PublicRecipientEgg::OrHash],
            sender_actor_id: String,
            text: String,
            type:
              HubspotSDK::Conversations::PublicConversationsMessageEgg::Type::OrSymbol,
            rich_text: String,
            subject: String
          ).returns(T.attached_class)
        end
        def self.new(
          attachments:,
          channel_account_id:,
          channel_id:,
          recipients:,
          sender_actor_id:,
          text:,
          type:,
          rich_text: nil,
          subject: nil
        )
        end

        sig do
          override.returns(
            {
              attachments:
                T::Array[
                  T.any(
                    HubspotSDK::Conversations::PublicFileEgg,
                    HubspotSDK::Conversations::PublicQuickRepliesEgg,
                    HubspotSDK::Conversations::PublicSocialMediaEgg
                  )
                ],
              channel_account_id: String,
              channel_id: String,
              recipients:
                T::Array[HubspotSDK::Conversations::PublicRecipientEgg],
              sender_actor_id: String,
              text: String,
              type:
                HubspotSDK::Conversations::PublicConversationsMessageEgg::Type::OrSymbol,
              rich_text: String,
              subject: String
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
                HubspotSDK::Conversations::PublicFileEgg,
                HubspotSDK::Conversations::PublicQuickRepliesEgg,
                HubspotSDK::Conversations::PublicSocialMediaEgg
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicConversationsMessageEgg::Attachment::Variants
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
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicConversationsMessageEgg::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGE =
            T.let(
              :MESSAGE,
              HubspotSDK::Conversations::PublicConversationsMessageEgg::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicConversationsMessageEgg::Type::TaggedSymbol
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
