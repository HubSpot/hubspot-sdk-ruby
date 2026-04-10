# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class CollectionResponseWithTotalPublicSequenceLiteResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of PublicSequenceLiteResponse objects, each representing a lightweight
        #   version of a sequence.
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicSequenceLiteResponse>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicSequenceLiteResponse] }

        # @!attribute total
        #   An integer representing the total number of sequence items available.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::CollectionResponseWithTotalPublicSequenceLiteResponse}
        #   for more details.
        #
        #   @param results [Array<HubSpotSDK::Models::Automation::PublicSequenceLiteResponse>] An array of PublicSequenceLiteResponse objects, each representing a lightweight
        #
        #   @param total [Integer] An integer representing the total number of sequence items available.
        #
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
