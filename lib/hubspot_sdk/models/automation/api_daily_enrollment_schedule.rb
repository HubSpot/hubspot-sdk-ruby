# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIDailyEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute type
        #   The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        #   "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIDailyEnrollmentSchedule::Type }

        # @!method initialize(time_of_day:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule} for more details.
        #
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule::Type] The type of enrollment schedule this is, can be: "DAILY", "WEEKLY", "MONTHLY_SPE

        # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        #
        # @see HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          DAILY = :DAILY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
