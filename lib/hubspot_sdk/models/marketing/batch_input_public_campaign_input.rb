# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicCampaignInput objects, each representing the properties of a
        #   campaign to be created in the batch. This property is required.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaignInput>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignInput] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::BatchInputPublicCampaignInput} for more details.
        #
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::PublicCampaignInput>] An array of PublicCampaignInput objects, each representing the properties of a c
      end
    end
  end
end
