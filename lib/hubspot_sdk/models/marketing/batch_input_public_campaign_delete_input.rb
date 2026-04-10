# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignDeleteInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
        #   deleted. Each object must include the campaign's unique identifier.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicCampaignDeleteInput>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignDeleteInput] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::BatchInputPublicCampaignDeleteInput} for more
        #   details.
        #
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::PublicCampaignDeleteInput>] An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
      end
    end
  end
end
