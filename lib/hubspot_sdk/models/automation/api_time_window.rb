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
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay, nil]
        optional :end_time, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :endTime

        # @!attribute start_time
        #
        #   @return [HubspotSDK::Models::Automation::APITimeOfDay, nil]
        optional :start_time, -> { HubspotSDK::Automation::APITimeOfDay }, api_name: :startTime

        # @!method initialize(day:, end_time: nil, start_time: nil)
        #   @param day [Symbol, HubspotSDK::Models::Automation::APITimeWindow::Day]
        #   @param end_time [HubspotSDK::Models::Automation::APITimeOfDay]
        #   @param start_time [HubspotSDK::Models::Automation::APITimeOfDay]

        # @see HubspotSDK::Models::Automation::APITimeWindow#day
        module Day
          extend HubspotSDK::Internal::Type::Enum

          FRIDAY = :FRIDAY
          MONDAY = :MONDAY
          SATURDAY = :SATURDAY
          SUNDAY = :SUNDAY
          THURSDAY = :THURSDAY
          TUESDAY = :TUESDAY
          WEDNESDAY = :WEDNESDAY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
