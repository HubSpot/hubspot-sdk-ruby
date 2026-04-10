# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalPublicCampaign < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of PublicCampaign objects, each representing a campaign with its
        #   associated properties.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaign>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaign] }

        # @!attribute total
        #   An integer representing the total number of public campaigns available.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::CollectionResponseWithTotalPublicCampaign} for
        #   more details.
        #
        #   @param results [Array<HubSpotSDK::Models::Marketing::PublicCampaign>] An array of PublicCampaign objects, each representing a campaign with its associ
        #
        #   @param total [Integer] An integer representing the total number of public campaigns available.
        #
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
