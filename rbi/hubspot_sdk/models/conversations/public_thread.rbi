# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicThread < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicThread,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(String) }
        attr_accessor :associated_contact_id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :inbox_id

        sig { returns(String) }
        attr_accessor :original_channel_account_id

        sig { returns(String) }
        attr_accessor :original_channel_id

        sig { returns(T::Boolean) }
        attr_accessor :spam

        sig do
          returns(HubspotSDK::Conversations::PublicThread::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_reader :assigned_to

        sig { params(assigned_to: String).void }
        attr_writer :assigned_to

        sig { returns(T.nilable(Time)) }
        attr_reader :closed_at

        sig { params(closed_at: Time).void }
        attr_writer :closed_at

        sig { returns(T.nilable(Time)) }
        attr_reader :latest_message_received_timestamp

        sig { params(latest_message_received_timestamp: Time).void }
        attr_writer :latest_message_received_timestamp

        sig { returns(T.nilable(Time)) }
        attr_reader :latest_message_sent_timestamp

        sig { params(latest_message_sent_timestamp: Time).void }
        attr_writer :latest_message_sent_timestamp

        sig { returns(T.nilable(Time)) }
        attr_reader :latest_message_timestamp

        sig { params(latest_message_timestamp: Time).void }
        attr_writer :latest_message_timestamp

        sig do
          returns(
            T.nilable(HubspotSDK::Conversations::PublicThreadAssociations)
          )
        end
        attr_reader :thread_associations

        sig do
          params(
            thread_associations:
              HubspotSDK::Conversations::PublicThreadAssociations::OrHash
          ).void
        end
        attr_writer :thread_associations

        sig do
          params(
            id: String,
            archived: T::Boolean,
            associated_contact_id: String,
            created_at: Time,
            inbox_id: String,
            original_channel_account_id: String,
            original_channel_id: String,
            spam: T::Boolean,
            status: HubspotSDK::Conversations::PublicThread::Status::OrSymbol,
            assigned_to: String,
            closed_at: Time,
            latest_message_received_timestamp: Time,
            latest_message_sent_timestamp: Time,
            latest_message_timestamp: Time,
            thread_associations:
              HubspotSDK::Conversations::PublicThreadAssociations::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          archived:,
          associated_contact_id:,
          created_at:,
          inbox_id:,
          original_channel_account_id:,
          original_channel_id:,
          spam:,
          status:,
          assigned_to: nil,
          closed_at: nil,
          latest_message_received_timestamp: nil,
          latest_message_sent_timestamp: nil,
          latest_message_timestamp: nil,
          thread_associations: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              associated_contact_id: String,
              created_at: Time,
              inbox_id: String,
              original_channel_account_id: String,
              original_channel_id: String,
              spam: T::Boolean,
              status:
                HubspotSDK::Conversations::PublicThread::Status::TaggedSymbol,
              assigned_to: String,
              closed_at: Time,
              latest_message_received_timestamp: Time,
              latest_message_sent_timestamp: Time,
              latest_message_timestamp: Time,
              thread_associations:
                HubspotSDK::Conversations::PublicThreadAssociations
            }
          )
        end
        def to_hash
        end

        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::PublicThread::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CLOSED =
            T.let(
              :CLOSED,
              HubspotSDK::Conversations::PublicThread::Status::TaggedSymbol
            )
          OPEN =
            T.let(
              :OPEN,
              HubspotSDK::Conversations::PublicThread::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicThread::Status::TaggedSymbol
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
