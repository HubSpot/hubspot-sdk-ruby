# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicThreadInboxChange < HubspotSDK::Internal::Type::BaseModel
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

        # @!attribute from_inbox_id
        #
        #   @return [String]
        required :from_inbox_id, String, api_name: :fromInboxId

        # @!attribute recipients
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicRecipient>]
        required :recipients,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicRecipient] }

        # @!attribute senders
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicSender>]
        required :senders, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicSender] }

        # @!attribute to_inbox_id
        #
        #   @return [String]
        required :to_inbox_id, String, api_name: :toInboxId

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicThreadInboxChange::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicThreadInboxChange::Type }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, archived:, client:, conversations_thread_id:, created_at:, created_by:, from_inbox_id:, recipients:, senders:, to_inbox_id:, type:, updated_at: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param client [HubspotSDK::Models::Conversations::PublicClient]
        #   @param conversations_thread_id [String]
        #   @param created_at [Time]
        #   @param created_by [String]
        #   @param from_inbox_id [String]
        #   @param recipients [Array<HubspotSDK::Models::Conversations::PublicRecipient>]
        #   @param senders [Array<HubspotSDK::Models::Conversations::PublicSender>]
        #   @param to_inbox_id [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicThreadInboxChange::Type]
        #   @param updated_at [Time]

        # @see HubspotSDK::Models::Conversations::PublicThreadInboxChange#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          THREAD_INBOX_CHANGE = :THREAD_INBOX_CHANGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
