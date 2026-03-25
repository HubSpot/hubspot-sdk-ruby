# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAsset < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of public campaign assets. Each item in the array is an object
        #   representing a campaign asset.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignAsset>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignAsset] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset} for more
        #   details.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicCampaignAsset>] An array of public campaign assets. Each item in the array is an object represen
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
