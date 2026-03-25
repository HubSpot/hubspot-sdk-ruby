# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class DateTime < HubspotSDK::Internal::Type::BaseModel
        # @!attribute date_only
        #   Indicates whether the DateTime value represents only a date without a time
        #   component.
        #
        #   @return [Boolean]
        required :date_only, HubspotSDK::Internal::Type::Boolean, api_name: :dateOnly

        # @!attribute time_zone_shift
        #   The integer value representing the shift in minutes from UTC for the DateTime
        #   value.
        #
        #   @return [Integer]
        required :time_zone_shift, Integer, api_name: :timeZoneShift

        # @!attribute value
        #   The integer value representing a specific point in time.
        #
        #   @return [Integer]
        required :value, Integer

        # @!method initialize(date_only:, time_zone_shift:, value:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::DateTime} for more details.
        #
        #   @param date_only [Boolean] Indicates whether the DateTime value represents only a date without a time compo
        #
        #   @param time_zone_shift [Integer] The integer value representing the shift in minutes from UTC for the DateTime va
        #
        #   @param value [Integer] The integer value representing a specific point in time.
      end
    end
  end
end
