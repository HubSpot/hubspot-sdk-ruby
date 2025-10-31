# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIMonthlyRelativeDaysEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute monthly_relative_days
        #   Can be either "LAST_DAY_OF_MONTH" or "FIRST_MONDAY_OF_MONTH"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays]
        required :monthly_relative_days,
                 enum: -> {
                   HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays
                 },
                 api_name: :monthlyRelativeDays

        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute type
        #   The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        #   "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type }

        # @!method initialize(monthly_relative_days:, time_of_day:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule} for
        #   more details.
        #
        #   @param monthly_relative_days [Symbol, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays] Can be either "LAST_DAY_OF_MONTH" or "FIRST_MONDAY_OF_MONTH"
        #
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type] The type of enrollment schedule this is, can be: "DAILY", "WEEKLY", "MONTHLY_SPE

        # Can be either "LAST_DAY_OF_MONTH" or "FIRST_MONDAY_OF_MONTH"
        #
        # @see HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule#monthly_relative_days
        module MonthlyRelativeDays
          extend HubspotSDK::Internal::Type::Enum

          LAST_DAY_OF_MONTH = :LAST_DAY_OF_MONTH
          FIRST_MONDAY_OF_MONTH = :FIRST_MONDAY_OF_MONTH

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        # @see HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          MONTHLY_RELATIVE_DAYS = :MONTHLY_RELATIVE_DAYS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
