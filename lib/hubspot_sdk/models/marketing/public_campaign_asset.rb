# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignAsset < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the campaign asset.
        #
        #   @return [String]
        required :id, String

        # @!attribute metrics
        #   A collection of metrics associated with the campaign asset, represented as
        #   key-value pairs.
        #
        #   @return [Hash{Symbol=>Float}, nil]
        optional :metrics, HubspotSDK::Internal::Type::HashOf[Float]

        # @!attribute name
        #   The name of the campaign asset.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, metrics: nil, name: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicCampaignAsset} for more details.
        #
        #   @param id [String] The unique identifier for the campaign asset.
        #
        #   @param metrics [Hash{Symbol=>Float}] A collection of metrics associated with the campaign asset, represented as key-v
        #
        #   @param name [String] The name of the campaign asset.
      end
    end
  end
end
