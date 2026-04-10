# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#get_histogram
      class CollectionResponseWithTotalEmailStatisticInterval < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::EmailStatisticInterval>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::EmailStatisticInterval] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Marketing::EmailStatisticInterval>]
        #   @param total [Integer]
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
