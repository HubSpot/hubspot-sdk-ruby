# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class QuickRepliesAttachment < HubspotSDK::Internal::Type::BaseModel
        # @!attribute quick_replies
        #
        #   @return [Array<HubspotSDK::Models::Conversations::QuickReply>]
        required :quick_replies,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::QuickReply] },
                 api_name: :quickReplies

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::QuickRepliesAttachment::Type]
        required :type, enum: -> { HubspotSDK::Conversations::QuickRepliesAttachment::Type }

        # @!method initialize(quick_replies:, type:)
        #   @param quick_replies [Array<HubspotSDK::Models::Conversations::QuickReply>]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::QuickRepliesAttachment::Type]

        # @see HubspotSDK::Models::Conversations::QuickRepliesAttachment#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          QUICK_REPLIES = :QUICK_REPLIES

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
