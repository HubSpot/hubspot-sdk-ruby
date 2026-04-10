# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#get
      class AggregateEmailStatistics < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute aggregate
        #
        #   @return [HubSpotSDK::Models::Marketing::EmailStatisticsData]
        required :aggregate, -> { HubSpotSDK::Marketing::EmailStatisticsData }

        # @!attribute campaign_aggregations
        #   The aggregated statistics per campaign.
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Marketing::EmailStatisticsData}]
        required :campaign_aggregations,
                 -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Marketing::EmailStatisticsData] },
                 api_name: :campaignAggregations

        # @!attribute emails
        #   List of email IDs that were sent during the time span.
        #
        #   @return [Array<Integer>]
        required :emails, HubSpotSDK::Internal::Type::ArrayOf[Integer]

        # @!method initialize(aggregate:, campaign_aggregations:, emails:)
        #   @param aggregate [HubSpotSDK::Models::Marketing::EmailStatisticsData]
        #
        #   @param campaign_aggregations [Hash{Symbol=>HubSpotSDK::Models::Marketing::EmailStatisticsData}] The aggregated statistics per campaign.
        #
        #   @param emails [Array<Integer>] List of email IDs that were sent during the time span.
      end
    end
  end
end
