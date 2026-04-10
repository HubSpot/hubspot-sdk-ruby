# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicQuickReplies < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute allow_multi_select
        #
        #   @return [Boolean]
        required :allow_multi_select, HubSpotSDK::Internal::Type::Boolean, api_name: :allowMultiSelect

        # @!attribute allow_user_input
        #
        #   @return [Boolean]
        required :allow_user_input, HubSpotSDK::Internal::Type::Boolean, api_name: :allowUserInput

        # @!attribute quick_replies
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::QuickReply>]
        required :quick_replies,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::QuickReply] },
                 api_name: :quickReplies

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::PublicQuickReplies::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::PublicQuickReplies::Type }

        # @!method initialize(allow_multi_select:, allow_user_input:, quick_replies:, type:)
        #   @param allow_multi_select [Boolean]
        #   @param allow_user_input [Boolean]
        #   @param quick_replies [Array<HubSpotSDK::Models::Conversations::QuickReply>]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::PublicQuickReplies::Type]

        # @see HubSpotSDK::Models::Conversations::PublicQuickReplies#type
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
