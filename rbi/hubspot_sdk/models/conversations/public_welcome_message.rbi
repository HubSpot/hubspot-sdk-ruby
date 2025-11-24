# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicWelcomeMessage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicWelcomeMessage,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

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

        sig { returns(T::Array[HubspotSDK::Conversations::PublicRecipient]) }
        attr_accessor :recipients

        sig { returns(T::Array[HubspotSDK::Conversations::PublicSender]) }
        attr_accessor :senders

        sig { returns(String) }
        attr_accessor :text

        sig do
          returns(
            HubspotSDK::Conversations::PublicWelcomeMessage::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :rich_text

        sig { params(rich_text: String).void }
        attr_writer :rich_text

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            archived: T::Boolean,
            channel_account_id: String,
            channel_id: String,
            client: HubspotSDK::Conversations::PublicClient::OrHash,
            conversations_thread_id: String,
            created_at: Time,
            created_by: String,
            recipients:
              T::Array[HubspotSDK::Conversations::PublicRecipient::OrHash],
            senders: T::Array[HubspotSDK::Conversations::PublicSender::OrHash],
            text: String,
            type:
              HubspotSDK::Conversations::PublicWelcomeMessage::Type::OrSymbol,
            rich_text: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          archived:,
          channel_account_id:,
          channel_id:,
          client:,
          conversations_thread_id:,
          created_at:,
          created_by:,
          recipients:,
          senders:,
          text:,
          type:,
          rich_text: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              channel_account_id: String,
              channel_id: String,
              client: HubspotSDK::Conversations::PublicClient,
              conversations_thread_id: String,
              created_at: Time,
              created_by: String,
              recipients: T::Array[HubspotSDK::Conversations::PublicRecipient],
              senders: T::Array[HubspotSDK::Conversations::PublicSender],
              text: String,
              type:
                HubspotSDK::Conversations::PublicWelcomeMessage::Type::TaggedSymbol,
              rich_text: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicWelcomeMessage::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WELCOME_MESSAGE =
            T.let(
              :WELCOME_MESSAGE,
              HubspotSDK::Conversations::PublicWelcomeMessage::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicWelcomeMessage::Type::TaggedSymbol
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
