# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      class CollectionResponsePublicTaxRateGroupForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Settings::PublicTaxRateGroup>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::PublicTaxRateGroup] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Settings::PublicTaxRateGroup>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
