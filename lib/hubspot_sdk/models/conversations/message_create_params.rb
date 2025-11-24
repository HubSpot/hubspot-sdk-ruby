# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::Messages#create
      class MessageCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute public_message_egg
        #
        #   @return [HubspotSDK::Models::Conversations::PublicConversationsMessageEgg, HubspotSDK::Models::Conversations::PublicCommentEgg]
        required :public_message_egg, union: -> { HubspotSDK::Conversations::PublicMessageEgg }

        # @!method initialize(public_message_egg:, request_options: {})
        #   @param public_message_egg [HubspotSDK::Models::Conversations::PublicConversationsMessageEgg, HubspotSDK::Models::Conversations::PublicCommentEgg]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
