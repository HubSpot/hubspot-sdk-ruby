# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class CollectionResponseWithTotalPublicInboxForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicInbox>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicInbox] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Conversations::PublicInbox>]
        #   @param total [Integer]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
