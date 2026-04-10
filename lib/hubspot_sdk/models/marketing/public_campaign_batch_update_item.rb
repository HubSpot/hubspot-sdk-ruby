# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicCampaignBatchUpdateItem < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the campaign to be updated.
        #
        #   @return [String]
        required :id, String

        # @!attribute properties
        #   A set of key-value pairs representing the properties to be updated for the
        #   campaign.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!method initialize(id:, properties:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::PublicCampaignBatchUpdateItem} for more details.
        #
        #   @param id [String] The unique identifier for the campaign to be updated.
        #
        #   @param properties [Hash{Symbol=>String}] A set of key-value pairs representing the properties to be updated for the campa
      end
    end
  end
end
