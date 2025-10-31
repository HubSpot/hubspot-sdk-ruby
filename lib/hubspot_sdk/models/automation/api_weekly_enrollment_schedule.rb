# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIWeeklyEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute days_of_week
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
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::Type }

        # @!method initialize(days_of_week:, time_of_day:, type:)
        #   @param days_of_week [Array<Symbol, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek>]
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIWeeklyEnrollmentSchedule::Type]

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
