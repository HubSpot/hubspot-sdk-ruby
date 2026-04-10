# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class CalendarDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::CalendarDatePropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::CalendarDatePropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::CalendarDatePropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::CalendarDatePropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute time_unit
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::CalendarDatePropertyOperation::TimeUnit]
        required :time_unit,
                 enum: -> { HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit },
                 api_name: :timeUnit

        # @!attribute time_unit_count
        #
        #   @return [Integer]
        required :time_unit_count, Integer, api_name: :timeUnitCount

        # @!attribute use_fiscal_year
        #
        #   @return [Boolean]
        required :use_fiscal_year, HubSpotSDK::Internal::Type::Boolean, api_name: :useFiscalYear

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute fiscal_year_start
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::CalendarDatePropertyOperation::FiscalYearStart, nil]
        optional :fiscal_year_start,
                 enum: -> { HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart },
                 api_name: :fiscalYearStart

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, time_unit:, time_unit_count:, use_fiscal_year:, default_value: nil, fiscal_year_start: nil, render_spec: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::CalendarDatePropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::CalendarDatePropertyOperation::PropertyType]
        #   @param time_unit [Symbol, HubSpotSDK::Models::Events::CalendarDatePropertyOperation::TimeUnit]
        #   @param time_unit_count [Integer]
        #   @param use_fiscal_year [Boolean]
        #   @param default_value [String]
        #   @param fiscal_year_start [Symbol, HubSpotSDK::Models::Events::CalendarDatePropertyOperation::FiscalYearStart]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::CalendarDatePropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IN_LAST_TIME_UNIT = :IN_LAST_TIME_UNIT
          IN_NEXT_TIME_UNIT = :IN_NEXT_TIME_UNIT
          IN_THIS_TIME_UNIT = :IN_THIS_TIME_UNIT
          IN_THIS_TIME_UNIT_SO_FAR = :IN_THIS_TIME_UNIT_SO_FAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::CalendarDatePropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          CALENDAR_DATE = :"calendar-date"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::CalendarDatePropertyOperation#time_unit
        module TimeUnit
          extend HubSpotSDK::Internal::Type::Enum

          DAY = :DAY
          MONTH = :MONTH
          QUARTER = :QUARTER
          WEEK = :WEEK
          YEAR = :YEAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::CalendarDatePropertyOperation#fiscal_year_start
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
