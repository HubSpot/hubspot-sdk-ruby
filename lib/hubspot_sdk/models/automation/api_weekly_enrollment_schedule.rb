# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIWeeklyEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute days_of_week
        #   Which days of the week to allow enrollments.
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek>]
        required :days_of_week,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek]
                 },
                 api_name: :daysOfWeek

        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute type
        #   The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        #   "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::Type }

        # @!method initialize(days_of_week:, time_of_day:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule} for more details.
        #
        #   @param days_of_week [Array<Symbol, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek>] Which days of the week to allow enrollments.
        #
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule::Type] The type of enrollment schedule this is, can be: "DAILY", "WEEKLY", "MONTHLY_SPE

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

        # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        # @see HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          WEEKLY = :WEEKLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
