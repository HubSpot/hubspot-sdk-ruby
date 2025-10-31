# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class CollectionResponseWithTotalPublicChannelAccountForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Conversations::PublicChannelAccount>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicChannelAccount] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Conversations::PublicChannelAccount>]
        #   @param total [Integer]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
