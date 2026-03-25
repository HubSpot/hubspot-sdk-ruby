# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAssetForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of public campaign assets. Each item in the array is a reference to a
        #   PublicCampaignAsset object.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignAsset>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignAsset] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAssetForwardPaging}
        #   for more details.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicCampaignAsset>] An array of public campaign assets. Each item in the array is a reference to a P
        #
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
