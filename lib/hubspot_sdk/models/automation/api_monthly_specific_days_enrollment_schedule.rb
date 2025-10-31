# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIMonthlySpecificDaysEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute days_of_month
        #   Which days of the month to run this workflow on.
        #
        #   @return [Array<Integer>]
        required :days_of_month, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :daysOfMonth

        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute type
        #   The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        #   "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type }

        # @!method initialize(days_of_month:, time_of_day:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule} for
        #   more details.
        #
        #   @param days_of_month [Array<Integer>] Which days of the month to run this workflow on.
        #
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type] The type of enrollment schedule this is, can be: "DAILY", "WEEKLY", "MONTHLY_SPE

        # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        # @see HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          MONTHLY_SPECIFIC_DAYS = :MONTHLY_SPECIFIC_DAYS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
