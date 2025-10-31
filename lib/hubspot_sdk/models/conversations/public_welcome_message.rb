# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicWelcomeMessage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute channel_account_id
        #
        #   @return [String]
        required :channel_account_id, String, api_name: :channelAccountId

        # @!attribute channel_id
        #
        #   @return [String]
        required :channel_id, String, api_name: :channelId

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

        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicWelcomeMessage::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicWelcomeMessage::Type }

        # @!attribute rich_text
        #
        #   @return [String, nil]
        optional :rich_text, String, api_name: :richText

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, archived:, channel_account_id:, channel_id:, client:, conversations_thread_id:, created_at:, created_by:, recipients:, senders:, text:, type:, rich_text: nil, updated_at: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param channel_account_id [String]
        #   @param channel_id [String]
        #   @param client [HubspotSDK::Models::Conversations::PublicClient]
        #   @param conversations_thread_id [String]
        #   @param created_at [Time]
        #   @param created_by [String]
        #   @param recipients [Array<HubspotSDK::Models::Conversations::PublicRecipient>]
        #   @param senders [Array<HubspotSDK::Models::Conversations::PublicSender>]
        #   @param text [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicWelcomeMessage::Type]
        #   @param rich_text [String]
        #   @param updated_at [Time]

        # @see HubspotSDK::Models::Conversations::PublicWelcomeMessage#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          WELCOME_MESSAGE = :WELCOME_MESSAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
