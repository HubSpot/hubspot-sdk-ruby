# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignBatchUpdateItem < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicCampaignBatchUpdateItem objects, each containing the ID and
        #   properties to update for a specific campaign.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignBatchUpdateItem>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignBatchUpdateItem] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::BatchInputPublicCampaignBatchUpdateItem} for
        #   more details.
        #
        #   @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignBatchUpdateItem>] An array of PublicCampaignBatchUpdateItem objects, each containing the ID and pr
      end
    end
  end
end
