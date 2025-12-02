# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class CollectionResponsePublicMessageForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Conversations::ConversationsPublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicMessage] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Conversations::ConversationsPublicConversationsMessage, HubspotSDK::Models::Conversations::PublicComment, HubspotSDK::Models::Conversations::PublicWelcomeMessage, HubspotSDK::Models::Conversations::PublicAssignmentMessage, HubspotSDK::Models::Conversations::PublicThreadStatusChange, HubspotSDK::Models::Conversations::PublicThreadInboxChange>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
