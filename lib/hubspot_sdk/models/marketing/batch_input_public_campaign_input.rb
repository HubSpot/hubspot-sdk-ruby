# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of PublicCampaignInput objects, each representing the properties of a
        #   campaign to be created in the batch. This property is required.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignInput>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignInput] }

        # @!method initialize(inputs:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::BatchInputPublicCampaignInput} for more details.
        #
        #   @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignInput>] An array of PublicCampaignInput objects, each representing the properties of a c
      end
    end
  end
end
