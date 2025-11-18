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

        # The unique ID of the thread.
        sig { returns(String) }
        attr_accessor :id

        # Whether this thread is archived.
        sig { returns(T::Boolean) }
        attr_accessor :archived

        # The ID of the associated Contact in the CRM. If the Contact for the thread has
        # not yet been added or created, the `associatedContactId` returned will be a
        # visitorID and cannot be used to search for the Contact in the CRM.
        sig { returns(String) }
        attr_accessor :associated_contact_id

        # When the thread was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the conversations inbox containing the thread.
        sig { returns(String) }
        attr_accessor :inbox_id

        sig { returns(String) }
        attr_accessor :original_channel_account_id

        sig { returns(String) }
        attr_accessor :original_channel_id

        # Whether the thread is marked as spam.
        sig { returns(T::Boolean) }
        attr_accessor :spam

        # The thread's status: `OPEN` or `CLOSED`.
        sig do
          returns(HubspotSDK::Conversations::PublicThread::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_reader :assigned_to

        sig { params(assigned_to: String).void }
        attr_writer :assigned_to

        # When the thread was closed. Only set if the thread is closed.
        sig { returns(T.nilable(Time)) }
        attr_reader :closed_at

        sig { params(closed_at: Time).void }
        attr_writer :closed_at

        # The time that the latest message was sent on the thread.
        sig { returns(T.nilable(Time)) }
        attr_reader :latest_message_received_timestamp

        sig { params(latest_message_received_timestamp: Time).void }
        attr_writer :latest_message_received_timestamp

        # The time that the latest message was sent on the thread.
        sig { returns(T.nilable(Time)) }
        attr_reader :latest_message_sent_timestamp

        sig { params(latest_message_sent_timestamp: Time).void }
        attr_writer :latest_message_sent_timestamp

        # The time that the latest message was sent or received on the thread.
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
          # The unique ID of the thread.
          id:,
          # Whether this thread is archived.
          archived:,
          # The ID of the associated Contact in the CRM. If the Contact for the thread has
          # not yet been added or created, the `associatedContactId` returned will be a
          # visitorID and cannot be used to search for the Contact in the CRM.
          associated_contact_id:,
          # When the thread was created.
          created_at:,
          # The ID of the conversations inbox containing the thread.
          inbox_id:,
          original_channel_account_id:,
          original_channel_id:,
          # Whether the thread is marked as spam.
          spam:,
          # The thread's status: `OPEN` or `CLOSED`.
          status:,
          assigned_to: nil,
          # When the thread was closed. Only set if the thread is closed.
          closed_at: nil,
          # The time that the latest message was sent on the thread.
          latest_message_received_timestamp: nil,
          # The time that the latest message was sent on the thread.
          latest_message_sent_timestamp: nil,
          # The time that the latest message was sent or received on the thread.
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

        # The thread's status: `OPEN` or `CLOSED`.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::PublicThread::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :OPEN,
              HubspotSDK::Conversations::PublicThread::Status::TaggedSymbol
            )
          CLOSED =
            T.let(
              :CLOSED,
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
