# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#get
      class AggregateEmailStatistics < HubspotSDK::Internal::Type::BaseModel
        # @!attribute aggregate
        #
        #   @return [HubspotSDK::Models::Marketing::EmailStatisticsData]
        required :aggregate, -> { HubspotSDK::Marketing::EmailStatisticsData }

        # @!attribute campaign_aggregations
        #   The aggregated statistics per campaign.
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Marketing::EmailStatisticsData}]
        required :campaign_aggregations,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Marketing::EmailStatisticsData] },
                 api_name: :campaignAggregations

        # @!attribute emails
        #   List of email IDs that were sent during the time span.
        #
        #   @return [Array<Integer>]
        required :emails, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!method initialize(aggregate:, campaign_aggregations:, emails:)
        #   @param aggregate [HubspotSDK::Models::Marketing::EmailStatisticsData]
        #
        #   @param campaign_aggregations [Hash{Symbol=>HubspotSDK::Models::Marketing::EmailStatisticsData}] The aggregated statistics per campaign.
        #
        #   @param emails [Array<Integer>] List of email IDs that were sent during the time span.
      end
    end
  end
end
