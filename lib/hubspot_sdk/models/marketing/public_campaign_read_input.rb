# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignReadInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the campaign, represented as a string.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String] The unique identifier for the campaign, represented as a string.
      end
    end
  end
end
