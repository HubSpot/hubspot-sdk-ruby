# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIYearlyEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day_of_month
        #
        #   @return [Integer]
        required :day_of_month, Integer, api_name: :dayOfMonth

        # @!attribute month
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule::Month]
        required :month, enum: -> { HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month }

        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Type }

        # @!method initialize(day_of_month:, month:, time_of_day:, type:)
        #   @param day_of_month [Integer]
        #   @param month [Symbol, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule::Month]
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule::Type]

        # @see HubspotSDK::Models::Automation::APIYearlyEnrollmentSchedule#month
        module Month
          extend HubspotSDK::Internal::Type::Enum

          APRIL = :APRIL
          AUGUST = :AUGUST
          DECEMBER = :DECEMBER
          FEBRUARY = :FEBRUARY
          JANUARY = :JANUARY
          JULY = :JULY
          JUNE = :JUNE
          MARCH = :MARCH
          MAY = :MAY
          NOVEMBER = :NOVEMBER
          OCTOBER = :OCTOBER
          SEPTEMBER = :SEPTEMBER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
