# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicCampaignInfluencedFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute campaign_id
      #
      #   @return [String]
      required :campaign_id, String, api_name: :campaignId

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicCampaignInfluencedFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicCampaignInfluencedFilter::FilterType },
               api_name: :filterType

      # @!method initialize(campaign_id:, filter_type:)
      #   @param campaign_id [String]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicCampaignInfluencedFilter::FilterType]

      # @see HubspotSDK::Models::PublicCampaignInfluencedFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        CAMPAIGN_INFLUENCED = :CAMPAIGN_INFLUENCED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
