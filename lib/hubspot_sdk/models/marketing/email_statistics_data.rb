# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class EmailStatisticsData < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute counters
        #   Counters like number of `sent`, `open` or `delivered`.
        #
        #   @return [Hash{Symbol=>Integer}]
        required :counters, HubSpotSDK::Internal::Type::HashOf[Integer]

        # @!attribute device_breakdown
        #   Statistics by device.
        #
        #   @return [Hash{Symbol=>Hash{Symbol=>Integer}}]
        required :device_breakdown,
                 HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::HashOf[Integer]],
                 api_name: :deviceBreakdown

        # @!attribute qualifier_stats
        #   Number of emails that were dropped and bounced.
        #
        #   @return [Hash{Symbol=>Hash{Symbol=>Integer}}]
        required :qualifier_stats,
                 HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::HashOf[Integer]],
                 api_name: :qualifierStats

        # @!attribute ratios
        #   Ratios like `openratio` or `clickratio`
        #
        #   @return [Hash{Symbol=>Float}]
        required :ratios, HubSpotSDK::Internal::Type::HashOf[Float]

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
