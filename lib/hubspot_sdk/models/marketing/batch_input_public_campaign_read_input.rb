# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignReadInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicCampaignReadInput objects, each containing the ID of a
        #   campaign to be read. This property is required.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignReadInput>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignReadInput] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::BatchInputPublicCampaignReadInput} for more
        #   details.
        #
        #   @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignReadInput>] An array of PublicCampaignReadInput objects, each containing the ID of a campaig
      end
    end
  end
end
