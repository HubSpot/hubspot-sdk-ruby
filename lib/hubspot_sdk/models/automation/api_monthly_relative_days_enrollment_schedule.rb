# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIMonthlyRelativeDaysEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute monthly_relative_days
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
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type }

        # @!method initialize(monthly_relative_days:, time_of_day:, type:)
        #   @param monthly_relative_days [Symbol, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays]
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type]

        # @see HubspotSDK::Models::Automation::APIMonthlyRelativeDaysEnrollmentSchedule#monthly_relative_days
        module MonthlyRelativeDays
          extend HubspotSDK::Internal::Type::Enum

          LAST_DAY_OF_MONTH = :LAST_DAY_OF_MONTH
          FIRST_MONDAY_OF_MONTH = :FIRST_MONDAY_OF_MONTH

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
