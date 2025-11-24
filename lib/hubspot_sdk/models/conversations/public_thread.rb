# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicThread < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute associated_contact_id
        #
        #   @return [String]
        required :associated_contact_id, String, api_name: :associatedContactId

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute inbox_id
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
        #
        #   @return [Boolean]
        required :spam, HubspotSDK::Internal::Type::Boolean

        # @!attribute status
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicThread::Status]
        required :status, enum: -> { HubspotSDK::Conversations::PublicThread::Status }

        # @!attribute assigned_to
        #
        #   @return [String, nil]
        optional :assigned_to, String, api_name: :assignedTo

        # @!attribute closed_at
        #
        #   @return [Time, nil]
        optional :closed_at, Time, api_name: :closedAt

        # @!attribute latest_message_received_timestamp
        #
        #   @return [Time, nil]
        optional :latest_message_received_timestamp, Time, api_name: :latestMessageReceivedTimestamp

        # @!attribute latest_message_sent_timestamp
        #
        #   @return [Time, nil]
        optional :latest_message_sent_timestamp, Time, api_name: :latestMessageSentTimestamp

        # @!attribute latest_message_timestamp
        #
        #   @return [Time, nil]
        optional :latest_message_timestamp, Time, api_name: :latestMessageTimestamp

        # @!attribute thread_associations
        #
        #   @return [HubspotSDK::Models::Conversations::PublicThreadAssociations, nil]
        optional :thread_associations,
                 -> { HubspotSDK::Conversations::PublicThreadAssociations },
                 api_name: :threadAssociations

        # @!method initialize(id:, archived:, associated_contact_id:, created_at:, inbox_id:, original_channel_account_id:, original_channel_id:, spam:, status:, assigned_to: nil, closed_at: nil, latest_message_received_timestamp: nil, latest_message_sent_timestamp: nil, latest_message_timestamp: nil, thread_associations: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param associated_contact_id [String]
        #   @param created_at [Time]
        #   @param inbox_id [String]
        #   @param original_channel_account_id [String]
        #   @param original_channel_id [String]
        #   @param spam [Boolean]
        #   @param status [Symbol, HubspotSDK::Models::Conversations::PublicThread::Status]
        #   @param assigned_to [String]
        #   @param closed_at [Time]
        #   @param latest_message_received_timestamp [Time]
        #   @param latest_message_sent_timestamp [Time]
        #   @param latest_message_timestamp [Time]
        #   @param thread_associations [HubspotSDK::Models::Conversations::PublicThreadAssociations]

        # @see HubspotSDK::Models::Conversations::PublicThread#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          CLOSED = :CLOSED
          OPEN = :OPEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
