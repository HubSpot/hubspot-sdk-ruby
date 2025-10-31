# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalEmailStatisticIntervalNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of objects.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::EmailStatisticInterval>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::EmailStatisticInterval] }

        # @!attribute total
        #   Total number of objects.
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(results:, total:)
        #   Response object for collections of EmailStatisticIntervals.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::EmailStatisticInterval>] Collection of objects.
        #
        #   @param total [Integer] Total number of objects.
      end
    end
  end
end
