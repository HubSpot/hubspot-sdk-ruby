# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module PublicMessageEgg
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Conversations::PublicConversationsMessageEgg }

        variant -> { HubspotSDK::Conversations::PublicCommentEgg }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Conversations::PublicConversationsMessageEgg, HubspotSDK::Models::Conversations::PublicCommentEgg)]
      end
    end
  end
end
