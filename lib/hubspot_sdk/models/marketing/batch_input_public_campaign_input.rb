# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicCampaignInput>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignInput] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Marketing::PublicCampaignInput>]
      end
    end
  end
end
