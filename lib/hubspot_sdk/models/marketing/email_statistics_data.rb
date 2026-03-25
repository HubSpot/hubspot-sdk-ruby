# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EmailStatisticsData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute counters
        #   Counters like number of `sent`, `open` or `delivered`.
        #
        #   @return [Hash{Symbol=>Integer}]
        required :counters, HubspotSDK::Internal::Type::HashOf[Integer]

        # @!attribute device_breakdown
        #   Statistics by device.
        #
        #   @return [Hash{Symbol=>Hash{Symbol=>Integer}}]
        required :device_breakdown,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::HashOf[Integer]],
                 api_name: :deviceBreakdown

        # @!attribute qualifier_stats
        #   Number of emails that were dropped and bounced.
        #
        #   @return [Hash{Symbol=>Hash{Symbol=>Integer}}]
        required :qualifier_stats,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::HashOf[Integer]],
                 api_name: :qualifierStats

        # @!attribute ratios
        #   Ratios like `openratio` or `clickratio`
        #
        #   @return [Hash{Symbol=>Float}]
        required :ratios, HubspotSDK::Internal::Type::HashOf[Float]

        # @!method initialize(counters:, device_breakdown:, qualifier_stats:, ratios:)
        #   @param counters [Hash{Symbol=>Integer}] Counters like number of `sent`, `open` or `delivered`.
        #
        #   @param device_breakdown [Hash{Symbol=>Hash{Symbol=>Integer}}] Statistics by device.
        #
        #   @param qualifier_stats [Hash{Symbol=>Hash{Symbol=>Integer}}] Number of emails that were dropped and bounced.
        #
        #   @param ratios [Hash{Symbol=>Float}] Ratios like `openratio` or `clickratio`
      end
    end
  end
end
