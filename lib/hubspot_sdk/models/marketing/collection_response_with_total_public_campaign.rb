# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalPublicCampaign < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of PublicCampaign objects, each representing a campaign with its
        #   associated properties.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaign>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaign] }

        # @!attribute total
        #   An integer representing the total number of public campaigns available.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::CollectionResponseWithTotalPublicCampaign} for
        #   more details.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicCampaign>] An array of PublicCampaign objects, each representing a campaign with its associ
        #
        #   @param total [Integer] An integer representing the total number of public campaigns available.
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
