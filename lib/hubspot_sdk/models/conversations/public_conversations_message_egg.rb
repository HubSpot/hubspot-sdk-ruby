# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicConversationsMessageEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute attachments
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicFileEgg, HubspotSDK::Models::Conversations::PublicQuickRepliesEgg, HubspotSDK::Models::Conversations::PublicSocialMediaEgg>]
        required :attachments,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicConversationsMessageEgg::Attachment] }

        # @!attribute channel_account_id
        #
        #   @return [String]
        required :channel_account_id, String, api_name: :channelAccountId

        # @!attribute channel_id
        #
        #   @return [String]
        required :channel_id, String, api_name: :channelId

        # @!attribute recipients
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicRecipientEgg>]
        required :recipients,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicRecipientEgg] }

        # @!attribute sender_actor_id
        #
        #   @return [String]
        required :sender_actor_id, String, api_name: :senderActorId

        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicConversationsMessageEgg::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicConversationsMessageEgg::Type }

        # @!attribute rich_text
        #
        #   @return [String, nil]
        optional :rich_text, String, api_name: :richText

        # @!attribute subject
        #
        #   @return [String, nil]
        optional :subject, String

        # @!method initialize(attachments:, channel_account_id:, channel_id:, recipients:, sender_actor_id:, text:, type:, rich_text: nil, subject: nil)
        #   @param attachments [Array<HubspotSDK::Models::Conversations::PublicFileEgg, HubspotSDK::Models::Conversations::PublicQuickRepliesEgg, HubspotSDK::Models::Conversations::PublicSocialMediaEgg>]
        #   @param channel_account_id [String]
        #   @param channel_id [String]
        #   @param recipients [Array<HubspotSDK::Models::Conversations::PublicRecipientEgg>]
        #   @param sender_actor_id [String]
        #   @param text [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicConversationsMessageEgg::Type]
        #   @param rich_text [String]
        #   @param subject [String]

        module Attachment
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Conversations::PublicFileEgg }

          variant -> { HubspotSDK::Conversations::PublicQuickRepliesEgg }

          variant -> { HubspotSDK::Conversations::PublicSocialMediaEgg }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Conversations::PublicFileEgg, HubspotSDK::Models::Conversations::PublicQuickRepliesEgg, HubspotSDK::Models::Conversations::PublicSocialMediaEgg)]
        end

        # @see HubspotSDK::Models::Conversations::PublicConversationsMessageEgg#type
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
