# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class ComboEventRule < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Array<HubSpotSDK::Models::Events::PropertyFilter>]
        required :property_filters,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::PropertyFilter] },
                 api_name: :propertyFilters

        # @!attribute lookback_window_days
        #
        #   @return [Integer, nil]
        optional :lookback_window_days, Integer, api_name: :lookbackWindowDays

        # @!method initialize(count:, event_type_id:, property_filters:, lookback_window_days: nil)
        #   @param count [Integer]
        #   @param event_type_id [String]
        #   @param property_filters [Array<HubSpotSDK::Models::Events::PropertyFilter>]
        #   @param lookback_window_days [Integer]
      end
    end
  end
end
