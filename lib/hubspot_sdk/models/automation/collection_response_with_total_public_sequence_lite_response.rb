# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CollectionResponseWithTotalPublicSequenceLiteResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of PublicSequenceLiteResponse objects, each representing a lightweight
        #   version of a sequence.
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicSequenceLiteResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicSequenceLiteResponse] }

        # @!attribute total
        #   An integer representing the total number of sequence items available.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::CollectionResponseWithTotalPublicSequenceLiteResponse}
        #   for more details.
        #
        #   @param results [Array<HubspotSDK::Models::Automation::PublicSequenceLiteResponse>] An array of PublicSequenceLiteResponse objects, each representing a lightweight
        #
        #   @param total [Integer] An integer representing the total number of sequence items available.
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
