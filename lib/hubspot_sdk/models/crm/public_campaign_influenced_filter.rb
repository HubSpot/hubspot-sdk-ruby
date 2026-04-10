# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicCampaignInfluencedFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute campaign_id
        #   The ID of the campaign that influences the filter.
        #
        #   @return [String]
        required :campaign_id, String, api_name: :campaignId

        # @!attribute filter_type
        #   Indicates the type of filter (CAMPAIGN_INFLUENCED).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicCampaignInfluencedFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicCampaignInfluencedFilter::FilterType },
                 api_name: :filterType

        # @!method initialize(campaign_id:, filter_type:)
        #   @param campaign_id [String] The ID of the campaign that influences the filter.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicCampaignInfluencedFilter::FilterType] Indicates the type of filter (CAMPAIGN_INFLUENCED).

        # Indicates the type of filter (CAMPAIGN_INFLUENCED).
        #
        # @see HubSpotSDK::Models::Crm::PublicCampaignInfluencedFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          CAMPAIGN_INFLUENCED = :CAMPAIGN_INFLUENCED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
