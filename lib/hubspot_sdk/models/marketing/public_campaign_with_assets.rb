# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Campaigns#get
      class PublicCampaignWithAssets < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute assets
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset}]
        required :assets,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Marketing::CollectionResponsePublicCampaignAsset] }

        # @!attribute business_units
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>]
        required :business_units,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBusinessUnit] },
                 api_name: :businessUnits

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute properties
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, assets:, business_units:, created_at:, properties:, updated_at:)
        #   @param id [String]
        #   @param assets [Hash{Symbol=>HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset}]
        #   @param business_units [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>]
        #   @param created_at [Time]
        #   @param properties [Hash{Symbol=>String}]
        #   @param updated_at [Time]
      end
    end
  end
end
