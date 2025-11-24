# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicCommentEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute attachments
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicFileEgg, HubspotSDK::Models::Conversations::PublicQuickRepliesEgg, HubspotSDK::Models::Conversations::PublicSocialMediaEgg>]
        required :attachments,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicCommentEgg::Attachment] }

        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicCommentEgg::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicCommentEgg::Type }

        # @!attribute rich_text
        #
        #   @return [String, nil]
        optional :rich_text, String, api_name: :richText

        # @!method initialize(attachments:, text:, type:, rich_text: nil)
        #   @param attachments [Array<HubspotSDK::Models::Conversations::PublicFileEgg, HubspotSDK::Models::Conversations::PublicQuickRepliesEgg, HubspotSDK::Models::Conversations::PublicSocialMediaEgg>]
        #   @param text [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicCommentEgg::Type]
        #   @param rich_text [String]

        module Attachment
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Conversations::PublicFileEgg }

          variant -> { HubspotSDK::Conversations::PublicQuickRepliesEgg }

          variant -> { HubspotSDK::Conversations::PublicSocialMediaEgg }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Conversations::PublicFileEgg, HubspotSDK::Models::Conversations::PublicQuickRepliesEgg, HubspotSDK::Models::Conversations::PublicSocialMediaEgg)]
        end

        # @see HubspotSDK::Models::Conversations::PublicCommentEgg#type
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
