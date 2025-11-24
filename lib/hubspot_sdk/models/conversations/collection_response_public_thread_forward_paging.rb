# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class CollectionResponsePublicThreadForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicThread>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicThread] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Conversations::PublicThread>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
