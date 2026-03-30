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
        #   Contains the assets associated with the campaign, each represented as a
        #   collection of campaign assets.
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
        #   The date and time when the campaign was created, formatted as a date-time
        #   string.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute properties
        #   A map of key-value pairs representing the properties of the campaign.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute updated_at
        #   The date and time when the campaign was last updated, formatted as a date-time
        #   string.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, assets:, business_units:, created_at:, properties:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicCampaignWithAssets} for more details.
        #
        #   @param id [String] The unique identifier for the campaign.
        #
        #   @param assets [Hash{Symbol=>HubspotSDK::Models::Marketing::CollectionResponsePublicCampaignAsset}] Contains the assets associated with the campaign, each represented as a collecti
        #
        #   @param business_units [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>] An array of business units associated with the campaign, each represented by a P
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
