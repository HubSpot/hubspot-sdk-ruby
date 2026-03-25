# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignDeleteInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
        #   deleted. Each object must include the campaign's unique identifier.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignDeleteInput>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignDeleteInput] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::BatchInputPublicCampaignDeleteInput} for more
        #   details.
        #
        #   @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignDeleteInput>] An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
      end
    end
  end
end
