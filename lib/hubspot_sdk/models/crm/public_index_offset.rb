# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicIndexOffset < HubspotSDK::Internal::Type::BaseModel
        # @!attribute days
        #   The number of days to offset.
        #
        #   @return [Integer, nil]
        optional :days, Integer

        # @!attribute hours
        #   The number of hours to offset.
        #
        #   @return [Integer, nil]
        optional :hours, Integer

        # @!attribute milliseconds
        #   The number of milliseconds to offset.
        #
        #   @return [Integer, nil]
        optional :milliseconds, Integer

        # @!attribute minutes
        #   The number of minutes to offset.
        #
        #   @return [Integer, nil]
        optional :minutes, Integer

        # @!attribute months
        #   The number of months to offset.
        #
        #   @return [Integer, nil]
        optional :months, Integer

        # @!attribute quarters
        #   The number of quarters to offset.
        #
        #   @return [Integer, nil]
        optional :quarters, Integer

        # @!attribute seconds
        #   The number of seconds to offset.
        #
        #   @return [Integer, nil]
        optional :seconds, Integer

        # @!attribute weeks
        #   The number of weeks to offset.
        #
        #   @return [Integer, nil]
        optional :weeks, Integer

        # @!attribute years
        #   The number of years to offset.
        #
        #   @return [Integer, nil]
        optional :years, Integer

        # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
        #   @param days [Integer] The number of days to offset.
        #
        #   @param hours [Integer] The number of hours to offset.
        #
        #   @param milliseconds [Integer] The number of milliseconds to offset.
        #
        #   @param minutes [Integer] The number of minutes to offset.
        #
        #   @param months [Integer] The number of months to offset.
        #
        #   @param quarters [Integer] The number of quarters to offset.
        #
        #   @param seconds [Integer] The number of seconds to offset.
        #
        #   @param weeks [Integer] The number of weeks to offset.
        #
        #   @param years [Integer] The number of years to offset.
      end
    end
  end
end
