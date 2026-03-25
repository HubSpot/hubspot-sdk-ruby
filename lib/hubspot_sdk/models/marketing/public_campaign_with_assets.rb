# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Campaigns#get
      class PublicCampaignWithAssets < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the campaign.
        #
        #   @return [String]
        required :id, String

        # @!attribute assets
        #   A map of asset types to their corresponding collection of campaign assets,
        #   represented by CollectionResponsePublicCampaignAsset objects.
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset}]
        required :assets,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Marketing::CollectionResponsePublicCampaignAsset] }

        # @!attribute business_units
        #   An array of business units associated with the campaign, each represented by a
        #   PublicBusinessUnit object.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>]
        required :business_units,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBusinessUnit] },
                 api_name: :businessUnits

        # @!attribute created_at
        #   The date and time when the campaign was created, in ISO 8601 format.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute properties
        #   A map of custom property names to their values for the campaign.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute updated_at
        #   The date and time when the campaign was last updated, in ISO 8601 format.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, assets:, business_units:, created_at:, properties:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicCampaignWithAssets} for more details.
        #
        #   @param id [String] The unique identifier for the campaign.
        #
        #   @param assets [Hash{Symbol=>HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset}] A map of asset types to their corresponding collection of campaign assets, repre
        #
        #   @param business_units [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>] An array of business units associated with the campaign, each represented by a P
        #
        #   @param created_at [Time] The date and time when the campaign was created, in ISO 8601 format.
        #
        #   @param properties [Hash{Symbol=>String}] A map of custom property names to their values for the campaign.
        #
        #   @param updated_at [Time] The date and time when the campaign was last updated, in ISO 8601 format.
      end
    end
  end
end
