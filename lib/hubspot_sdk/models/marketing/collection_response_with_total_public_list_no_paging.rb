# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalPublicListNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicList>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicList] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(results:, total:)
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicList>]
        #   @param total [Integer]
      end
    end
  end
end
