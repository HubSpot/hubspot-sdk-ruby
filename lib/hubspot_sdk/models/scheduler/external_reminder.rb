# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalReminder < HubspotSDK::Internal::Type::BaseModel
        # @!attribute number_of_time_units
        #
        #   @return [Integer]
        required :number_of_time_units, Integer, api_name: :numberOfTimeUnits

        # @!attribute time_unit
        #
        #   @return [String]
        required :time_unit, String, api_name: :timeUnit

        # @!method initialize(number_of_time_units:, time_unit:)
        #   @param number_of_time_units [Integer]
        #   @param time_unit [String]
      end
    end
  end
end
