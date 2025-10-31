# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APITimeDelay < HubspotSDK::Internal::Type::BaseModel
        # @!attribute days_of_week
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Automation::APITimeDelay::DaysOfWeek>]
        required :days_of_week,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Automation::APITimeDelay::DaysOfWeek]
                 },
                 api_name: :daysOfWeek

        # @!attribute delta
        #
        #   @return [Integer]
        required :delta, Integer

        # @!attribute time_unit
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APITimeDelay::TimeUnit]
        required :time_unit, enum: -> { HubspotSDK::Automation::APITimeDelay::TimeUnit }, api_name: :timeUnit

        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay, nil]
        optional :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute time_zone_strategy
        #
        #   @return [HubspotSDK::Models::Automation::APIStaticTimeZoneStrategy, nil]
        optional :time_zone_strategy,
                 -> { HubspotSDK::Automation::APIStaticTimeZoneStrategy },
                 api_name: :timeZoneStrategy

        # @!method initialize(days_of_week:, delta:, time_unit:, time_of_day: nil, time_zone_strategy: nil)
        #   @param days_of_week [Array<Symbol, HubspotSDK::Models::Automation::APITimeDelay::DaysOfWeek>]
        #   @param delta [Integer]
        #   @param time_unit [Symbol, HubspotSDK::Models::Automation::APITimeDelay::TimeUnit]
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param time_zone_strategy [HubspotSDK::Models::Automation::APIStaticTimeZoneStrategy]

        module DaysOfWeek
          extend HubspotSDK::Internal::Type::Enum

          MONDAY = :MONDAY
          TUESDAY = :TUESDAY
          WEDNESDAY = :WEDNESDAY
          THURSDAY = :THURSDAY
          FRIDAY = :FRIDAY
          SATURDAY = :SATURDAY
          SUNDAY = :SUNDAY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::APITimeDelay#time_unit
        module TimeUnit
          extend HubspotSDK::Internal::Type::Enum

          NANOS = :NANOS
          MICROS = :MICROS
          MILLIS = :MILLIS
          SECONDS = :SECONDS
          MINUTES = :MINUTES
          HOURS = :HOURS
          HALF_DAYS = :HALF_DAYS
          DAYS = :DAYS
          WEEKS = :WEEKS
          MONTHS = :MONTHS
          YEARS = :YEARS
          DECADES = :DECADES
          CENTURIES = :CENTURIES
          MILLENNIA = :MILLENNIA
          ERAS = :ERAS
          FOREVER = :FOREVER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
