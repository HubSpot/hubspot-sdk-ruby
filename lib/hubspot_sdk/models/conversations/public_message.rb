# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module PublicMessage
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Conversations::PublicConversationsMessage }

        variant -> { HubspotSDK::Conversations::PublicComment }

        variant -> { HubspotSDK::Conversations::PublicWelcomeMessage }

        variant -> { HubspotSDK::Conversations::PublicAssignmentMessage }

        variant -> { HubspotSDK::Conversations::PublicThreadStatusChange }

        variant -> { HubspotSDK::Conversations::PublicThreadInboxChange }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Conversations::PublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange)]
      end
    end
  end
end
