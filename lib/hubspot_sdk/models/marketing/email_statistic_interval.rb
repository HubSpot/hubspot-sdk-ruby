# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class EmailStatisticInterval < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute aggregations
        #
        #   @return [HubSpotSDK::Models::Marketing::EmailStatisticsData]
        required :aggregations, -> { HubSpotSDK::Marketing::EmailStatisticsData }

        # @!attribute interval
        #
        #   @return [HubSpotSDK::Models::Marketing::Interval]
        required :interval, -> { HubSpotSDK::Marketing::Interval }

        # @!method initialize(aggregations:, interval:)
        #   @param aggregations [HubSpotSDK::Models::Marketing::EmailStatisticsData]
        #   @param interval [HubSpotSDK::Models::Marketing::Interval]
      end
    end
  end
end
