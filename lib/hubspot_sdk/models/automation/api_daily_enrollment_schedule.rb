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
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIDailyEnrollmentSchedule::Type }

        # @!method initialize(time_of_day:, type:)
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIDailyEnrollmentSchedule::Type]

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
