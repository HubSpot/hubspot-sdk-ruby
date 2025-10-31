# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicThread < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the thread.
        #
        #   @return [String]
        required :id, String

        # @!attribute associated_contact_id
        #   The ID of the associated Contact in the CRM. If the Contact for the thread has
        #   not yet been added or created, the `associatedContactId` returned will be a
        #   visitorID and cannot be used to search for the Contact in the CRM.
        #
        #   @return [String]
        required :associated_contact_id, String, api_name: :associatedContactId

        # @!attribute created_at
        #   When the thread was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute inbox_id
        #   The ID of the conversations inbox containing the thread.
        #
        #   @return [String]
        required :inbox_id, String, api_name: :inboxId

        # @!attribute original_channel_account_id
        #
        #   @return [String]
        required :original_channel_account_id, String, api_name: :originalChannelAccountId

        # @!attribute original_channel_id
        #
        #   @return [String]
        required :original_channel_id, String, api_name: :originalChannelId

        # @!attribute spam
        #   Whether the thread is marked as spam.
        #
        #   @return [Boolean]
        required :spam, HubspotSDK::Internal::Type::Boolean

        # @!attribute status
        #   The thread's status: `OPEN` or `CLOSED`.
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicThread::Status]
        required :status, enum: -> { HubspotSDK::Conversations::PublicThread::Status }

        # @!attribute archived
        #   Whether this thread is archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute assigned_to
        #
        #   @return [String, nil]
        optional :assigned_to, String, api_name: :assignedTo

        # @!attribute closed_at
        #   When the thread was closed. Only set if the thread is closed.
        #
        #   @return [Time, nil]
        optional :closed_at, Time, api_name: :closedAt

        # @!attribute latest_message_received_timestamp
        #   The time that the latest message was sent on the thread.
        #
        #   @return [Time, nil]
        optional :latest_message_received_timestamp, Time, api_name: :latestMessageReceivedTimestamp

        # @!attribute latest_message_sent_timestamp
        #   The time that the latest message was sent on the thread.
        #
        #   @return [Time, nil]
        optional :latest_message_sent_timestamp, Time, api_name: :latestMessageSentTimestamp

        # @!attribute latest_message_timestamp
        #   The time that the latest message was sent or received on the thread.
        #
        #   @return [Time, nil]
        optional :latest_message_timestamp, Time, api_name: :latestMessageTimestamp

        # @!attribute thread_associations
        #
        #   @return [HubspotSDK::Models::Conversations::PublicThreadAssociations, nil]
        optional :thread_associations,
                 -> { HubspotSDK::Conversations::PublicThreadAssociations },
                 api_name: :threadAssociations

        # @!method initialize(id:, associated_contact_id:, created_at:, inbox_id:, original_channel_account_id:, original_channel_id:, spam:, status:, archived: nil, assigned_to: nil, closed_at: nil, latest_message_received_timestamp: nil, latest_message_sent_timestamp: nil, latest_message_timestamp: nil, thread_associations: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::PublicThread} for more details.
        #
        #   @param id [String] The unique ID of the thread.
        #
        #   @param associated_contact_id [String] The ID of the associated Contact in the CRM. If the Contact for the thread has n
        #
        #   @param created_at [Time] When the thread was created.
        #
        #   @param inbox_id [String] The ID of the conversations inbox containing the thread.
        #
        #   @param original_channel_account_id [String]
        #
        #   @param original_channel_id [String]
        #
        #   @param spam [Boolean] Whether the thread is marked as spam.
        #
        #   @param status [Symbol, HubspotSDK::Models::Conversations::PublicThread::Status] The thread's status: `OPEN` or `CLOSED`.
        #
        #   @param archived [Boolean] Whether this thread is archived.
        #
        #   @param assigned_to [String]
        #
        #   @param closed_at [Time] When the thread was closed. Only set if the thread is closed.
        #
        #   @param latest_message_received_timestamp [Time] The time that the latest message was sent on the thread.
        #
        #   @param latest_message_sent_timestamp [Time] The time that the latest message was sent on the thread.
        #
        #   @param latest_message_timestamp [Time] The time that the latest message was sent or received on the thread.
        #
        #   @param thread_associations [HubspotSDK::Models::Conversations::PublicThreadAssociations]

        # The thread's status: `OPEN` or `CLOSED`.
        #
        # @see HubspotSDK::Models::Conversations::PublicThread#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          OPEN = :OPEN
          CLOSED = :CLOSED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
