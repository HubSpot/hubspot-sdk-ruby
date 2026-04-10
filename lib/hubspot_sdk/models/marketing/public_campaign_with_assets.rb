# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Campaigns#get
      class PublicCampaignWithAssets < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the campaign.
        #
        #   @return [String]
        required :id, String

        # @!attribute assets
        #   Contains the assets associated with the campaign, each represented as a
        #   collection of campaign assets.
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset}]
        required :assets,
                 -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Marketing::CollectionResponsePublicCampaignAsset] }

        # @!attribute business_units
        #   An array of business units associated with the campaign, each represented by a
        #   PublicBusinessUnit object.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::PublicBusinessUnit>]
        required :business_units,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicBusinessUnit] },
                 api_name: :businessUnits

        # @!attribute created_at
        #   The date and time when the campaign was created, formatted as a date-time
        #   string.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute properties
        #   A map of key-value pairs representing the properties of the campaign.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute updated_at
        #   The date and time when the campaign was last updated, formatted as a date-time
        #   string.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, assets:, business_units:, created_at:, properties:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::PublicCampaignWithAssets} for more details.
        #
        #   @param id [String] The unique identifier for the campaign.
        #
        #   @param assets [Hash{Symbol=>HubSpotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset}] Contains the assets associated with the campaign, each represented as a collecti
        #
        #   @param business_units [Array<HubSpotSDK::Models::Marketing::PublicBusinessUnit>] An array of business units associated with the campaign, each represented by a P
        #
        #   @param created_at [Time] The date and time when the campaign was created, formatted as a date-time string
        #
        #   @param properties [Hash{Symbol=>String}] A map of key-value pairs representing the properties of the campaign.
        #
        #   @param updated_at [Time] The date and time when the campaign was last updated, formatted as a date-time s
      end
    end
  end
end
