# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIPropertyBasedEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute date_property
        #
        #   @return [String]
        required :date_property, String, api_name: :dateProperty

        # @!attribute days_delta
        #
        #   @return [Integer]
        required :days_delta, Integer, api_name: :daysDelta

        # @!attribute time_of_day
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :time_of_day, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :timeOfDay

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIPropertyBasedEnrollmentSchedule::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIPropertyBasedEnrollmentSchedule::Type }

        # @!attribute yearly
        #
        #   @return [Boolean]
        required :yearly, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(date_property:, days_delta:, time_of_day:, type:, yearly:)
        #   @param date_property [String]
        #   @param days_delta [Integer]
        #   @param time_of_day [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIPropertyBasedEnrollmentSchedule::Type]
        #   @param yearly [Boolean]

        # @see HubspotSDK::Models::Automation::APIPropertyBasedEnrollmentSchedule#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          PROPERTY_BASED = :PROPERTY_BASED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
