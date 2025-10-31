# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicCalendarDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicCalendarDatePropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicCalendarDatePropertyOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute time_unit
      #
      #   @return [String]
      required :time_unit, String, api_name: :timeUnit

      # @!attribute fiscal_year_start
      #
      #   @return [Symbol, HubspotSDK::Models::PublicCalendarDatePropertyOperation::FiscalYearStart, nil]
      optional :fiscal_year_start,
               enum: -> { HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart },
               api_name: :fiscalYearStart

      # @!attribute time_unit_count
      #
      #   @return [Integer, nil]
      optional :time_unit_count, Integer, api_name: :timeUnitCount

      # @!attribute use_fiscal_year
      #
      #   @return [Boolean, nil]
      optional :use_fiscal_year, HubspotSDK::Internal::Type::Boolean, api_name: :useFiscalYear

      # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, time_unit:, fiscal_year_start: nil, time_unit_count: nil, use_fiscal_year: nil)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicCalendarDatePropertyOperation::OperationType]
      #   @param operator [String]
      #   @param time_unit [String]
      #   @param fiscal_year_start [Symbol, HubspotSDK::Models::PublicCalendarDatePropertyOperation::FiscalYearStart]
      #   @param time_unit_count [Integer]
      #   @param use_fiscal_year [Boolean]

      # @see HubspotSDK::Models::PublicCalendarDatePropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        CALENDAR_DATE = :CALENDAR_DATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicCalendarDatePropertyOperation#fiscal_year_start
      module FiscalYearStart
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
