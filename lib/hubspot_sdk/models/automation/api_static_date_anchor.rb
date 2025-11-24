# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticDateAnchor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day_of_month
        #
        #   @return [Integer]
        required :day_of_month, Integer, api_name: :dayOfMonth

        # @!attribute month
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticDateAnchor::Month]
        required :month, enum: -> { HubspotSDK::Automation::APIStaticDateAnchor::Month }

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticDateAnchor::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticDateAnchor::Type }

        # @!attribute year
        #
        #   @return [Integer, nil]
        optional :year, Integer

        # @!method initialize(day_of_month:, month:, type:, year: nil)
        #   @param day_of_month [Integer]
        #   @param month [Symbol, HubspotSDK::Models::Automation::APIStaticDateAnchor::Month]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticDateAnchor::Type]
        #   @param year [Integer]

        # @see HubspotSDK::Models::Automation::APIStaticDateAnchor#month
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

        # @see HubspotSDK::Models::Automation::APIStaticDateAnchor#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STATIC_DATE_ANCHOR = :STATIC_DATE_ANCHOR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
