# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class QuickRepliesAttachment < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute quick_replies
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::QuickReply>]
        required :quick_replies,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::QuickReply] },
                 api_name: :quickReplies

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::QuickRepliesAttachment::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::QuickRepliesAttachment::Type }

        # @!method initialize(quick_replies:, type:)
        #   @param quick_replies [Array<HubSpotSDK::Models::Conversations::QuickReply>]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::QuickRepliesAttachment::Type]

        # @see HubSpotSDK::Models::Conversations::QuickRepliesAttachment#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          QUICK_REPLIES = :QUICK_REPLIES

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
