# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class ComboEventRule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute count
        #
        #   @return [Integer]
        required :count, Integer

        # @!attribute event_type_id
        #
        #   @return [String]
        required :event_type_id, String, api_name: :eventTypeId

        # @!attribute property_filters
        #
        #   @return [Array<HubspotSDK::Models::Events::PropertyFilter>]
        required :property_filters,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::PropertyFilter] },
                 api_name: :propertyFilters

        # @!attribute lookback_window_days
        #
        #   @return [Integer, nil]
        optional :lookback_window_days, Integer, api_name: :lookbackWindowDays

        # @!method initialize(count:, event_type_id:, property_filters:, lookback_window_days: nil)
        #   @param count [Integer]
        #   @param event_type_id [String]
        #   @param property_filters [Array<HubspotSDK::Models::Events::PropertyFilter>]
        #   @param lookback_window_days [Integer]
      end
    end
  end
end
