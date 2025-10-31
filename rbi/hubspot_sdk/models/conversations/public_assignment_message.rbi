# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicAssignmentMessage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicAssignmentMessage,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

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

        sig do
          returns(
            HubspotSDK::Conversations::PublicAssignmentMessage::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :assigned_from

        sig { params(assigned_from: String).void }
        attr_writer :assigned_from

        sig { returns(T.nilable(String)) }
        attr_reader :assigned_to

        sig { params(assigned_to: String).void }
        attr_writer :assigned_to

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            archived: T::Boolean,
            client: HubspotSDK::Conversations::PublicClient::OrHash,
            conversations_thread_id: String,
            created_at: Time,
            created_by: String,
            recipients:
              T::Array[HubspotSDK::Conversations::PublicRecipient::OrHash],
            senders: T::Array[HubspotSDK::Conversations::PublicSender::OrHash],
            type:
              HubspotSDK::Conversations::PublicAssignmentMessage::Type::OrSymbol,
            assigned_from: String,
            assigned_to: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          archived:,
          client:,
          conversations_thread_id:,
          created_at:,
          created_by:,
          recipients:,
          senders:,
          type:,
          assigned_from: nil,
          assigned_to: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              client: HubspotSDK::Conversations::PublicClient,
              conversations_thread_id: String,
              created_at: Time,
              created_by: String,
              recipients: T::Array[HubspotSDK::Conversations::PublicRecipient],
              senders: T::Array[HubspotSDK::Conversations::PublicSender],
              type:
                HubspotSDK::Conversations::PublicAssignmentMessage::Type::TaggedSymbol,
              assigned_from: String,
              assigned_to: String,
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
                HubspotSDK::Conversations::PublicAssignmentMessage::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSIGNMENT =
            T.let(
              :ASSIGNMENT,
              HubspotSDK::Conversations::PublicAssignmentMessage::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicAssignmentMessage::Type::TaggedSymbol
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
