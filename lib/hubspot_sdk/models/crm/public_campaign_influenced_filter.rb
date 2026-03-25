# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicCampaignInfluencedFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute campaign_id
        #   The ID of the campaign that influences the filter.
        #
        #   @return [String]
        required :campaign_id, String, api_name: :campaignId

        # @!attribute filter_type
        #   Indicates the type of filter (CAMPAIGN_INFLUENCED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicCampaignInfluencedFilter::FilterType },
                 api_name: :filterType

        # @!method initialize(campaign_id:, filter_type:)
        #   @param campaign_id [String] The ID of the campaign that influences the filter.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter::FilterType] Indicates the type of filter (CAMPAIGN_INFLUENCED).

        # Indicates the type of filter (CAMPAIGN_INFLUENCED).
        #
        # @see HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          CAMPAIGN_INFLUENCED = :CAMPAIGN_INFLUENCED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
