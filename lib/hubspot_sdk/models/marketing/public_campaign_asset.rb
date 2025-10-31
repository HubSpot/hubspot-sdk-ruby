# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignAsset < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute metrics
        #
        #   @return [Hash{Symbol=>Float}]
        required :metrics, HubspotSDK::Internal::Type::HashOf[Float]

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, metrics:, name: nil)
        #   @param id [String]
        #   @param metrics [Hash{Symbol=>Float}]
        #   @param name [String]
      end
    end
  end
end
