# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignReadInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicCampaignReadInput objects, each containing the ID of a
        #   campaign to be read. This property is required.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaignReadInput>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignReadInput] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::BatchInputPublicCampaignReadInput} for more
        #   details.
        #
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::PublicCampaignReadInput>] An array of PublicCampaignReadInput objects, each containing the ID of a campaig
      end
    end
  end
end
