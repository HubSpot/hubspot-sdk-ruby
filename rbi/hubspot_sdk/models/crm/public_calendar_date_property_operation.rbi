# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicCalendarDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether objects with no value set for the property should be included.
        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        # The type of operation, which is (CALENDAR_DATE).
        sig do
          returns(
            HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OperationType::OrSymbol
          )
        end
        attr_accessor :operation_type

        # Defines the operation to be applied to the calendar date property
        # (IN_THIS_TIME_UNIT, IN_THIS_TIME_UNIT_SO_FAR, IN_NEXT_TIME_UNIT,
        # IN_LAST_TIME_UNIT).
        sig { returns(String) }
        attr_accessor :operator

        # The unit of time to be used in the operation (DAY, WEEK, MONTH, QUARTER, YEAR).
        sig { returns(String) }
        attr_accessor :time_unit

        # The month in which the fiscal year starts.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::OrSymbol
            )
          )
        end
        attr_reader :fiscal_year_start

        sig do
          params(
            fiscal_year_start:
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::OrSymbol
          ).void
        end
        attr_writer :fiscal_year_start

        # The count of time units to be applied in the operation (1).
        sig { returns(T.nilable(Integer)) }
        attr_reader :time_unit_count

        sig { params(time_unit_count: Integer).void }
        attr_writer :time_unit_count

        # Specifies whether the fiscal year should be used in the operation.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_fiscal_year

        sig { params(use_fiscal_year: T::Boolean).void }
        attr_writer :use_fiscal_year

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OperationType::OrSymbol,
            operator: String,
            time_unit: String,
            fiscal_year_start:
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::OrSymbol,
            time_unit_count: Integer,
            use_fiscal_year: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether objects with no value set for the property should be included.
          include_objects_with_no_value_set:,
          # The type of operation, which is (CALENDAR_DATE).
          operation_type:,
          # Defines the operation to be applied to the calendar date property
          # (IN_THIS_TIME_UNIT, IN_THIS_TIME_UNIT_SO_FAR, IN_NEXT_TIME_UNIT,
          # IN_LAST_TIME_UNIT).
          operator:,
          # The unit of time to be used in the operation (DAY, WEEK, MONTH, QUARTER, YEAR).
          time_unit:,
          # The month in which the fiscal year starts.
          fiscal_year_start: nil,
          # The count of time units to be applied in the operation (1).
          time_unit_count: nil,
          # Specifies whether the fiscal year should be used in the operation.
          use_fiscal_year: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type:
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OperationType::OrSymbol,
              operator: String,
              time_unit: String,
              fiscal_year_start:
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::OrSymbol,
              time_unit_count: Integer,
              use_fiscal_year: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The type of operation, which is (CALENDAR_DATE).
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALENDAR_DATE =
            T.let(
              :CALENDAR_DATE,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OperationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The month in which the fiscal year starts.
        module FiscalYearStart
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APRIL =
            T.let(
              :APRIL,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          AUGUST =
            T.let(
              :AUGUST,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          DECEMBER =
            T.let(
              :DECEMBER,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          FEBRUARY =
            T.let(
              :FEBRUARY,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JANUARY =
            T.let(
              :JANUARY,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JULY =
            T.let(
              :JULY,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JUNE =
            T.let(
              :JUNE,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          MARCH =
            T.let(
              :MARCH,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          MAY =
            T.let(
              :MAY,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          NOVEMBER =
            T.let(
              :NOVEMBER,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          OCTOBER =
            T.let(
              :OCTOBER,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          SEPTEMBER =
            T.let(
              :SEPTEMBER,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
