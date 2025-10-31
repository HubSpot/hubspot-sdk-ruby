# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIYearlyEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day_of_month
        #   The day of the date each year to run this flow.
        #
        #   @return [Integer]
        required :day_of_month, Integer, api_name: :dayOfMonth

        # @!attribute month
        #   The month of the date each year to run this flow.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule::Month]
        required :month, enum: -> { HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month }

        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute type
        #   The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        #   "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Type }

        # @!method initialize(day_of_month:, month:, time_of_day:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule} for more details.
        #
        #   @param day_of_month [Integer] The day of the date each year to run this flow.
        #
        #   @param month [Symbol, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule::Month] The month of the date each year to run this flow.
        #
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule::Type] The type of enrollment schedule this is, can be: "DAILY", "WEEKLY", "MONTHLY_SPE

        # The month of the date each year to run this flow.
        #
        # @see HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule#month
        module Month
          extend HubspotSDK::Internal::Type::Enum

          JANUARY = :JANUARY
          FEBRUARY = :FEBRUARY
          MARCH = :MARCH
          APRIL = :APRIL
          MAY = :MAY
          JUNE = :JUNE
          JULY = :JULY
          AUGUST = :AUGUST
          SEPTEMBER = :SEPTEMBER
          OCTOBER = :OCTOBER
          NOVEMBER = :NOVEMBER
          DECEMBER = :DECEMBER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        # @see HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          YEARLY = :YEARLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
