# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicCalendarDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   The type of operation, which is (CALENDAR_DATE).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied to the calendar date property
        #   (IN_THIS_TIME_UNIT, IN_THIS_TIME_UNIT_SO_FAR, IN_NEXT_TIME_UNIT,
        #   IN_LAST_TIME_UNIT).
        #
        #   @return [String]
        required :operator, String

        # @!attribute time_unit
        #   The unit of time to be used in the operation (DAY, WEEK, MONTH, QUARTER, YEAR).
        #
        #   @return [String]
        required :time_unit, String, api_name: :timeUnit

        # @!attribute fiscal_year_start
        #   The month in which the fiscal year starts.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart, nil]
        optional :fiscal_year_start,
                 enum: -> { HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart },
                 api_name: :fiscalYearStart

        # @!attribute time_unit_count
        #   The count of time units to be applied in the operation (1).
        #
        #   @return [Integer, nil]
        optional :time_unit_count, Integer, api_name: :timeUnitCount

        # @!attribute use_fiscal_year
        #   Specifies whether the fiscal year should be used in the operation.
        #
        #   @return [Boolean, nil]
        optional :use_fiscal_year, HubSpotSDK::Internal::Type::Boolean, api_name: :useFiscalYear

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, time_unit:, fiscal_year_start: nil, time_unit_count: nil, use_fiscal_year: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included.
        #
        #   @param operation_type [Symbol, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation::OperationType] The type of operation, which is (CALENDAR_DATE).
        #
        #   @param operator [String] Defines the operation to be applied to the calendar date property (IN*THIS_TIME*
        #
        #   @param time_unit [String] The unit of time to be used in the operation (DAY, WEEK, MONTH, QUARTER, YEAR).
        #
        #   @param fiscal_year_start [Symbol, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart] The month in which the fiscal year starts.
        #
        #   @param time_unit_count [Integer] The count of time units to be applied in the operation (1).
        #
        #   @param use_fiscal_year [Boolean] Specifies whether the fiscal year should be used in the operation.

        # The type of operation, which is (CALENDAR_DATE).
        #
        # @see HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          CALENDAR_DATE = :CALENDAR_DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The month in which the fiscal year starts.
        #
        # @see HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation#fiscal_year_start
        module FiscalYearStart
          extend HubSpotSDK::Internal::Type::Enum

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
      end
    end
  end
end
