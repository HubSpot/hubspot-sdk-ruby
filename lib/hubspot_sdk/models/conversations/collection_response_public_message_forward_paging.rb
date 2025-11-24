# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class CollectionResponsePublicMessageForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Conversations::ConversationsPublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging::Result] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Conversations::ConversationsPublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]

        module Result
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Conversations::ConversationsPublicConversationsMessage }

          variant -> { HubspotSDK::Conversations::PublicComment }

          variant -> { HubspotSDK::Conversations::PublicWelcomeMessage }

          variant -> { HubspotSDK::Conversations::PublicAssignmentMessage }

          variant -> { HubspotSDK::Conversations::PublicThreadStatusChange }

          variant -> { HubspotSDK::Conversations::PublicThreadInboxChange }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Conversations::ConversationsPublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange)]
        end
      end
    end
  end
end
