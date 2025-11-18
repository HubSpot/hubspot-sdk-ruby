# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EmailStatisticInterval < HubspotSDK::Internal::Type::BaseModel
        # @!attribute aggregations
        #
        #   @return [HubspotSDK::Models::Marketing::EmailStatisticsData]
        required :aggregations, -> { HubspotSDK::Marketing::EmailStatisticsData }

        # @!attribute interval
        #
        #   @return [HubspotSDK::Models::Marketing::Interval]
        required :interval, -> { HubspotSDK::Marketing::Interval }

        # @!method initialize(aggregations:, interval:)
        #   @param aggregations [HubspotSDK::Models::Marketing::EmailStatisticsData]
        #   @param interval [HubspotSDK::Models::Marketing::Interval]
      end
    end
  end
end
