# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAsset < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of public campaign assets. Each item in the array is an object
        #   representing a campaign asset.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaignAsset>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignAsset] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset} for more
        #   details.
        #
        #   @param results [Array<HubSpotSDK::Models::Marketing::PublicCampaignAsset>] An array of public campaign assets. Each item in the array is an object represen
        #
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
