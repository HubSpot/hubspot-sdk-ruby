# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicConversationsMessage < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubSpotSDK::Internal::Type::Boolean

        # @!attribute attachments
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::PublicFile, HubSpotSDK::Models::Conversations::PublicLocation, HubSpotSDK::Models::Conversations::PublicContact, HubSpotSDK::Models::Conversations::PublicUnsupportedContent, HubSpotSDK::Models::Conversations::PublicMessageHeader, HubSpotSDK::Models::Conversations::PublicQuickReplies, HubSpotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata, HubSpotSDK::Models::Conversations::PublicSocialMetadataAttachment>]
        required :attachments,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Conversations::PublicConversationsMessage::Attachment] }

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
        #   @return [HubSpotSDK::Models::Conversations::PublicClient]
        required :client, -> { HubSpotSDK::Conversations::PublicClient }

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

        # @!attribute direction
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicConversationsMessage::Direction]
        required :direction, enum: -> { HubSpotSDK::Conversations::PublicConversationsMessage::Direction }

        # @!attribute recipients
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::PublicRecipient>]
        required :recipients,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PublicRecipient] }

        # @!attribute senders
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::PublicSender>]
        required :senders, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PublicSender] }

        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!attribute truncation_status
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicConversationsMessage::TruncationStatus]
        required :truncation_status,
                 enum: -> { HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus },
                 api_name: :truncationStatus

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicConversationsMessage::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::PublicConversationsMessage::Type }

        # @!attribute in_reply_to_id
        #
        #   @return [String, nil]
        optional :in_reply_to_id, String, api_name: :inReplyToId

        # @!attribute rich_text
        #
        #   @return [String, nil]
        optional :rich_text, String, api_name: :richText

        # @!attribute status
        #
        #   @return [HubSpotSDK::Models::Conversations::PublicMessageStatus, nil]
        optional :status, -> { HubSpotSDK::Conversations::PublicMessageStatus }

        # @!attribute subject
        #
        #   @return [String, nil]
        optional :subject, String

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, archived:, attachments:, channel_account_id:, channel_id:, client:, conversations_thread_id:, created_at:, created_by:, direction:, recipients:, senders:, text:, truncation_status:, type:, in_reply_to_id: nil, rich_text: nil, status: nil, subject: nil, updated_at: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param attachments [Array<HubSpotSDK::Models::Conversations::PublicFile, HubSpotSDK::Models::Conversations::PublicLocation, HubSpotSDK::Models::Conversations::PublicContact, HubSpotSDK::Models::Conversations::PublicUnsupportedContent, HubSpotSDK::Models::Conversations::PublicMessageHeader, HubSpotSDK::Models::Conversations::PublicQuickReplies, HubSpotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata, HubSpotSDK::Models::Conversations::PublicSocialMetadataAttachment>]
        #   @param channel_account_id [String]
        #   @param channel_id [String]
        #   @param client [HubSpotSDK::Models::Conversations::PublicClient]
        #   @param conversations_thread_id [String]
        #   @param created_at [Time]
        #   @param created_by [String]
        #   @param direction [Symbol, HubSpotSDK::Models::Conversations::PublicConversationsMessage::Direction]
        #   @param recipients [Array<HubSpotSDK::Models::Conversations::PublicRecipient>]
        #   @param senders [Array<HubSpotSDK::Models::Conversations::PublicSender>]
        #   @param text [String]
        #   @param truncation_status [Symbol, HubSpotSDK::Models::Conversations::PublicConversationsMessage::TruncationStatus]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::PublicConversationsMessage::Type]
        #   @param in_reply_to_id [String]
        #   @param rich_text [String]
        #   @param status [HubSpotSDK::Models::Conversations::PublicMessageStatus]
        #   @param subject [String]
        #   @param updated_at [Time]

        module Attachment
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Conversations::PublicFile }

          variant -> { HubSpotSDK::Conversations::PublicLocation }

          variant -> { HubSpotSDK::Conversations::PublicContact }

          variant -> { HubSpotSDK::Conversations::PublicUnsupportedContent }

          variant -> { HubSpotSDK::Conversations::PublicMessageHeader }

          variant -> { HubSpotSDK::Conversations::PublicQuickReplies }

          variant -> { HubSpotSDK::Conversations::PublicWhatsAppTemplateMetadata }

          variant -> { HubSpotSDK::Conversations::PublicSocialMetadataAttachment }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Conversations::PublicFile, HubSpotSDK::Models::Conversations::PublicLocation, HubSpotSDK::Models::Conversations::PublicContact, HubSpotSDK::Models::Conversations::PublicUnsupportedContent, HubSpotSDK::Models::Conversations::PublicMessageHeader, HubSpotSDK::Models::Conversations::PublicQuickReplies, HubSpotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata, HubSpotSDK::Models::Conversations::PublicSocialMetadataAttachment)]
        end

        # @see HubSpotSDK::Models::Conversations::PublicConversationsMessage#direction
        module Direction
          extend HubSpotSDK::Internal::Type::Enum

          INCOMING = :INCOMING
          OUTGOING = :OUTGOING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Conversations::PublicConversationsMessage#truncation_status
        module TruncationStatus
          extend HubSpotSDK::Internal::Type::Enum

          NOT_TRUNCATED = :NOT_TRUNCATED
          TRUNCATED = :TRUNCATED
          TRUNCATED_TO_MOST_RECENT_REPLY = :TRUNCATED_TO_MOST_RECENT_REPLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Conversations::PublicConversationsMessage#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          MESSAGE = :MESSAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
