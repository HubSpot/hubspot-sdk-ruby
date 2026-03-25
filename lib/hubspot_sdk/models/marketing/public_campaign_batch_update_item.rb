# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignBatchUpdateItem < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the campaign to be updated. It is a string.
        #
        #   @return [String]
        required :id, String

        # @!attribute properties
        #   A map of property names to their new values for the campaign. Each property name
        #   is a string, and its value is also a string.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!method initialize(id:, properties:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicCampaignBatchUpdateItem} for more details.
        #
        #   @param id [String] The unique identifier for the campaign to be updated. It is a string.
        #
        #   @param properties [Hash{Symbol=>String}] A map of property names to their new values for the campaign. Each property name
      end
    end
  end
end
