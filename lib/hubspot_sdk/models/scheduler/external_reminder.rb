# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalReminder < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute number_of_time_units
        #   The number of timeUnits prior to the meeting start when the reminder will be
        #   sent.
        #
        #   @return [Integer]
        required :number_of_time_units, Integer, api_name: :numberOfTimeUnits

        # @!attribute time_unit
        #   Accepted values are: WEEKS, DAYS, HOURS, MINUTES.
        #
        #   @return [Symbol, HubSpotSDK::Models::Scheduler::ExternalReminder::TimeUnit]
        required :time_unit,
                 enum: -> {
                   HubSpotSDK::Scheduler::ExternalReminder::TimeUnit
                 },
                 api_name: :timeUnit

        # @!method initialize(number_of_time_units:, time_unit:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Scheduler::ExternalReminder} for more details.
        #
        #   @param number_of_time_units [Integer] The number of timeUnits prior to the meeting start when the reminder will be sen
        #
        #   @param time_unit [Symbol, HubSpotSDK::Models::Scheduler::ExternalReminder::TimeUnit] Accepted values are: WEEKS, DAYS, HOURS, MINUTES.

        # Accepted values are: WEEKS, DAYS, HOURS, MINUTES.
        #
        # @see HubSpotSDK::Models::Scheduler::ExternalReminder#time_unit
        module TimeUnit
          extend HubSpotSDK::Internal::Type::Enum

          DAYS = :DAYS
          HOURS = :HOURS
          MINUTES = :MINUTES
          WEEKS = :WEEKS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
