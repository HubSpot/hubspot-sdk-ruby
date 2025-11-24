# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicComment < HubspotSDK::Internal::Type::BaseModel
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
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicComment::Attachment] }

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

        # @!attribute rich_text
        #
        #   @return [String]
        required :rich_text, String, api_name: :richText

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
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicComment::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicComment::Type }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, archived:, attachments:, client:, conversations_thread_id:, created_at:, created_by:, recipients:, rich_text:, senders:, text:, type:, updated_at: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param attachments [Array<HubspotSDK::Models::Conversations::PublicFile, HubspotSDK::Models::Conversations::PublicLocation, HubspotSDK::Models::Conversations::PublicContact, HubspotSDK::Models::Conversations::PublicUnsupportedContent, HubspotSDK::Models::Conversations::PublicMessageHeader, HubspotSDK::Models::Conversations::PublicQuickReplies, HubspotSDK::Models::Conversations::PublicWhatsAppTemplateMetadata, HubspotSDK::Models::Conversations::PublicSocialMetadataAttachment>]
        #   @param client [HubspotSDK::Models::Conversations::PublicClient]
        #   @param conversations_thread_id [String]
        #   @param created_at [Time]
        #   @param created_by [String]
        #   @param recipients [Array<HubspotSDK::Models::Conversations::PublicRecipient>]
        #   @param rich_text [String]
        #   @param senders [Array<HubspotSDK::Models::Conversations::PublicSender>]
        #   @param text [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicComment::Type]
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

        # @see HubspotSDK::Models::Conversations::PublicComment#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          COMMENT = :COMMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
