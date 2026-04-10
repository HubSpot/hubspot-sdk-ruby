# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAssetForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of public campaign assets. Each item in the array is a reference to a
        #   PublicCampaignAsset object.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaignAsset>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignAsset] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::CollectionResponsePublicCampaignAssetForwardPaging}
        #   for more details.
        #
        #   @param results [Array<HubSpotSDK::Models::Marketing::PublicCampaignAsset>] An array of public campaign assets. Each item in the array is a reference to a P
        #
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
