# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticDateAnchor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day_of_month
        #   The day of the date to anchor on
        #
        #   @return [Integer]
        required :day_of_month, Integer, api_name: :dayOfMonth

        # @!attribute month
        #   The month of the date to anchor on
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticDateAnchor::Month]
        required :month, enum: -> { HubspotSDK::Automation::APIStaticDateAnchor::Month }

        # @!attribute type
        #   The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
        #   "STATIC_DATE_ANCHOR"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticDateAnchor::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticDateAnchor::Type }

        # @!attribute year
        #   The year of the date to anchor on. If this is not provided then this flow will
        #   re-run each year.
        #
        #   @return [Integer, nil]
        optional :year, Integer

        # @!method initialize(day_of_month:, month:, type:, year: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIStaticDateAnchor} for more details.
        #
        #   @param day_of_month [Integer] The day of the date to anchor on
        #
        #   @param month [Symbol, HubspotSDK::Models::Automation::APIStaticDateAnchor::Month] The month of the date to anchor on
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticDateAnchor::Type] The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or "STATIC_D
        #
        #   @param year [Integer] The year of the date to anchor on. If this is not provided then this flow will r

        # The month of the date to anchor on
        #
        # @see HubspotSDK::Models::Automation::APIStaticDateAnchor#month
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

        # The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
        # "STATIC_DATE_ANCHOR"
        #
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
