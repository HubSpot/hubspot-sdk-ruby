# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignBatchUpdateItem < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute properties
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!method initialize(id:, properties:)
        #   @param id [String]
        #   @param properties [Hash{Symbol=>String}]
      end
    end
  end
end
