# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAsset < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignAsset>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignAsset] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicCampaignAsset>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
