# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EmailStatisticInterval < HubspotSDK::Internal::Type::BaseModel
        # @!attribute aggregations
        #
        #   @return [HubspotSDK::Models::Marketing::EmailStatisticsData, nil]
        optional :aggregations, -> { HubspotSDK::Marketing::EmailStatisticsData }

        # @!attribute interval
        #
        #   @return [HubspotSDK::Models::Marketing::Interval, nil]
        optional :interval, -> { HubspotSDK::Marketing::Interval }

        # @!method initialize(aggregations: nil, interval: nil)
        #   @param aggregations [HubspotSDK::Models::Marketing::EmailStatisticsData]
        #   @param interval [HubspotSDK::Models::Marketing::Interval]
      end
    end
  end
end
