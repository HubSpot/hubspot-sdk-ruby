# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicConversationsMessage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute attachments
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicFile, HubspotSDK::Models::Conversations::PublicLocation, HubspotSDK::Models::Conversations::PublicContact, HubspotSDK::Models::Conversations::PublicUnsupportedContent, HubspotSDK::Models::Conversations::PublicMessageHeader, HubspotSDK::Models::Conversations::PublicQuickReplies, HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata, HubspotSDK::Models::Conversations::PublicSocialMetadataAttachment>]
        required :attachments,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicConversationsMessage::Attachment] }

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

        # @!attribute direction
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicConversationsMessage::Direction]
        required :direction, enum: -> { HubspotSDK::Conversations::PublicConversationsMessage::Direction }

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

        # @!attribute truncation_status
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicConversationsMessage::TruncationStatus]
        required :truncation_status,
                 enum: -> { HubspotSDK::Conversations::PublicConversationsMessage::TruncationStatus },
                 api_name: :truncationStatus

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicConversationsMessage::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicConversationsMessage::Type }

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
        #   @return [HubspotSDK::Models::Conversations::PublicMessageStatus, nil]
        optional :status, -> { HubspotSDK::Conversations::PublicMessageStatus }

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
        #   @param attachments [Array<HubspotSDK::Models::Conversations::PublicFile, HubspotSDK::Models::Conversations::PublicLocation, HubspotSDK::Models::Conversations::PublicContact, HubspotSDK::Models::Conversations::PublicUnsupportedContent, HubspotSDK::Models::Conversations::PublicMessageHeader, HubspotSDK::Models::Conversations::PublicQuickReplies, HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata, HubspotSDK::Models::Conversations::PublicSocialMetadataAttachment>]
        #   @param channel_account_id [String]
        #   @param channel_id [String]
        #   @param client [HubspotSDK::Models::Conversations::PublicClient]
        #   @param conversations_thread_id [String]
        #   @param created_at [Time]
        #   @param created_by [String]
        #   @param direction [Symbol, HubspotSDK::Models::Conversations::PublicConversationsMessage::Direction]
        #   @param recipients [Array<HubspotSDK::Models::Conversations::PublicRecipient>]
        #   @param senders [Array<HubspotSDK::Models::Conversations::PublicSender>]
        #   @param text [String]
        #   @param truncation_status [Symbol, HubspotSDK::Models::Conversations::PublicConversationsMessage::TruncationStatus]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicConversationsMessage::Type]
        #   @param in_reply_to_id [String]
        #   @param rich_text [String]
        #   @param status [HubspotSDK::Models::Conversations::PublicMessageStatus]
        #   @param subject [String]
        #   @param updated_at [Time]

        module Attachment
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Conversations::PublicFile }

          variant -> { HubspotSDK::Conversations::PublicLocation }

          variant -> { HubspotSDK::Conversations::PublicContact }

          variant -> { HubspotSDK::Conversations::PublicUnsupportedContent }

          variant -> { HubspotSDK::Conversations::PublicMessageHeader }

          variant -> { HubspotSDK::Conversations::PublicQuickReplies }

          variant -> { HubspotSDK::Conversations::PublicWhatsAppTemplateMetadata }

          variant -> { HubspotSDK::Conversations::PublicSocialMetadataAttachment }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Conversations::PublicFile, HubspotSDK::Models::Conversations::PublicLocation, HubspotSDK::Models::Conversations::PublicContact, HubspotSDK::Models::Conversations::PublicUnsupportedContent, HubspotSDK::Models::Conversations::PublicMessageHeader, HubspotSDK::Models::Conversations::PublicQuickReplies, HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata, HubspotSDK::Models::Conversations::PublicSocialMetadataAttachment)]
        end

        # @see HubspotSDK::Models::Conversations::PublicConversationsMessage#direction
        module Direction
          extend HubspotSDK::Internal::Type::Enum

          INCOMING = :INCOMING
          OUTGOING = :OUTGOING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Conversations::PublicConversationsMessage#truncation_status
        module TruncationStatus
          extend HubspotSDK::Internal::Type::Enum

          NOT_TRUNCATED = :NOT_TRUNCATED
          TRUNCATED = :TRUNCATED
          TRUNCATED_TO_MOST_RECENT_REPLY = :TRUNCATED_TO_MOST_RECENT_REPLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Conversations::PublicConversationsMessage#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          MESSAGE = :MESSAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
