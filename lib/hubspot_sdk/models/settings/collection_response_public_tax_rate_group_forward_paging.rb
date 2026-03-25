# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class CollectionResponsePublicTaxRateGroupForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Settings::PublicTaxRateGroup>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::PublicTaxRateGroup] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Settings::PublicTaxRateGroup>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
