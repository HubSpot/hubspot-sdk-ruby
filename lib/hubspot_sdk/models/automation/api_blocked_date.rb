# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIBlockedDate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day_of_month
        #
        #   @return [Integer]
        required :day_of_month, Integer, api_name: :dayOfMonth

        # @!attribute month
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIBlockedDate::Month]
        required :month, enum: -> { HubspotSDK::Automation::APIBlockedDate::Month }

        # @!attribute year
        #
        #   @return [Integer, nil]
        optional :year, Integer

        # @!method initialize(day_of_month:, month:, year: nil)
        #   @param day_of_month [Integer]
        #   @param month [Symbol, HubspotSDK::Models::Automation::APIBlockedDate::Month]
        #   @param year [Integer]

        # @see HubspotSDK::Models::Automation::APIBlockedDate#month
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
      end
    end
  end
end
