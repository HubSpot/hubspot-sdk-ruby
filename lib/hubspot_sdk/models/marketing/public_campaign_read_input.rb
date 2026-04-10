# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicCampaignReadInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for a campaign.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String] The unique identifier for a campaign.
      end
    end
  end
end
