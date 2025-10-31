# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignBatchUpdateItem < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignBatchUpdateItem>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignBatchUpdateItem] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignBatchUpdateItem>]
      end
    end
  end
end
