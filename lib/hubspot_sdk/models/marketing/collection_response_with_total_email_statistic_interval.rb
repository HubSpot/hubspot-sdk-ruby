# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#get_histogram
      class CollectionResponseWithTotalEmailStatisticInterval < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::EmailStatisticInterval>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::EmailStatisticInterval] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Marketing::EmailStatisticInterval>]
        #   @param total [Integer]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
