# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APITimeWindow < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APITimeWindow::Day]
        required :day, enum: -> { HubspotSDK::Automation::APITimeWindow::Day }

        # @!attribute end_time
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :end_time, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :endTime

        # @!attribute start_time
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay]
        required :start_time, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :startTime

        # @!method initialize(day:, end_time:, start_time:)
        #   @param day [Symbol, HubspotSDK::Models::Automation::APITimeWindow::Day]
        #   @param end_time [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param start_time [HubspotSDK::Models::Automation::APITimeOfDay]

        # @see HubspotSDK::Models::Automation::APITimeWindow#day
        module Day
          extend HubspotSDK::Internal::Type::Enum

          MONDAY = :MONDAY
          TUESDAY = :TUESDAY
          WEDNESDAY = :WEDNESDAY
          THURSDAY = :THURSDAY
          FRIDAY = :FRIDAY
          SATURDAY = :SATURDAY
          SUNDAY = :SUNDAY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
