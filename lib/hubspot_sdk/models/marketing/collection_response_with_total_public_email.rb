# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalPublicEmail < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicEmail>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicEmail] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Marketing::PublicEmail>]
        #   @param total [Integer]
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
