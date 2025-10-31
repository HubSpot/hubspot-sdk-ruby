# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIMonthlySpecificDaysEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute days_of_month
        #
        #   @return [Array<Integer>]
        required :days_of_month, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :daysOfMonth

        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type }

        # @!method initialize(days_of_month:, time_of_day:, type:)
        #   @param days_of_month [Array<Integer>]
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type]

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
