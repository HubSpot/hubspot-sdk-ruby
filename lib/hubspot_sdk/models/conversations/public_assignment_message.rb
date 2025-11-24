# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicAssignmentMessage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute client
        #
        #   @return [HubspotSDK::Models::Conversations::PublicClient]
        required :client, -> { HubspotSDK::Conversations::PublicClient }

        # @!attribute conversations_thread_id
        #
        #   @return [String]
        required :conversations_thread_id, String, api_name: :conversationsThreadId

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute created_by
        #
        #   @return [String]
        required :created_by, String, api_name: :createdBy

        # @!attribute recipients
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicRecipient>]
        required :recipients,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicRecipient] }

        # @!attribute senders
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicSender>]
        required :senders, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicSender] }

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicAssignmentMessage::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicAssignmentMessage::Type }

        # @!attribute assigned_from
        #
        #   @return [String, nil]
        optional :assigned_from, String, api_name: :assignedFrom

        # @!attribute assigned_to
        #
        #   @return [String, nil]
        optional :assigned_to, String, api_name: :assignedTo

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, archived:, client:, conversations_thread_id:, created_at:, created_by:, recipients:, senders:, type:, assigned_from: nil, assigned_to: nil, updated_at: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param client [HubspotSDK::Models::Conversations::PublicClient]
        #   @param conversations_thread_id [String]
        #   @param created_at [Time]
        #   @param created_by [String]
        #   @param recipients [Array<HubspotSDK::Models::Conversations::PublicRecipient>]
        #   @param senders [Array<HubspotSDK::Models::Conversations::PublicSender>]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicAssignmentMessage::Type]
        #   @param assigned_from [String]
        #   @param assigned_to [String]
        #   @param updated_at [Time]

        # @see HubspotSDK::Models::Conversations::PublicAssignmentMessage#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ASSIGNMENT = :ASSIGNMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
