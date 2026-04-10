# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignBatchUpdateItem < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicCampaignBatchUpdateItem objects, each containing the ID and
        #   properties to update for a specific campaign.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaignBatchUpdateItem>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignBatchUpdateItem] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::BatchInputPublicCampaignBatchUpdateItem} for
        #   more details.
        #
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::PublicCampaignBatchUpdateItem>] An array of PublicCampaignBatchUpdateItem objects, each containing the ID and pr
      end
    end
  end
end
