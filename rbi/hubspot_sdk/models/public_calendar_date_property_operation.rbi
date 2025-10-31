# typed: strong

module HubspotSDK
  module Models
    class PublicCalendarDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicCalendarDatePropertyOperation,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :include_objects_with_no_value_set

      sig do
        returns(
          HubspotSDK::PublicCalendarDatePropertyOperation::OperationType::OrSymbol
        )
      end
      attr_accessor :operation_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(String) }
      attr_accessor :time_unit

      sig do
        returns(
          T.nilable(
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::OrSymbol
          )
        )
      end
      attr_reader :fiscal_year_start

      sig do
        params(
          fiscal_year_start:
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::OrSymbol
        ).void
      end
      attr_writer :fiscal_year_start

      sig { returns(T.nilable(Integer)) }
      attr_reader :time_unit_count

      sig { params(time_unit_count: Integer).void }
      attr_writer :time_unit_count

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_fiscal_year

      sig { params(use_fiscal_year: T::Boolean).void }
      attr_writer :use_fiscal_year

      sig do
        params(
          include_objects_with_no_value_set: T::Boolean,
          operation_type:
            HubspotSDK::PublicCalendarDatePropertyOperation::OperationType::OrSymbol,
          operator: String,
          time_unit: String,
          fiscal_year_start:
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::OrSymbol,
          time_unit_count: Integer,
          use_fiscal_year: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        include_objects_with_no_value_set:,
        operation_type:,
        operator:,
        time_unit:,
        fiscal_year_start: nil,
        time_unit_count: nil,
        use_fiscal_year: nil
      )
      end

      sig do
        override.returns(
          {
            include_objects_with_no_value_set: T::Boolean,
            operation_type:
              HubspotSDK::PublicCalendarDatePropertyOperation::OperationType::OrSymbol,
            operator: String,
            time_unit: String,
            fiscal_year_start:
              HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::OrSymbol,
            time_unit_count: Integer,
            use_fiscal_year: T::Boolean
          }
        )
      end
      def to_hash
      end

      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicCalendarDatePropertyOperation::OperationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALENDAR_DATE =
          T.let(
            :CALENDAR_DATE,
            HubspotSDK::PublicCalendarDatePropertyOperation::OperationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicCalendarDatePropertyOperation::OperationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module FiscalYearStart
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        JANUARY =
          T.let(
            :JANUARY,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        FEBRUARY =
          T.let(
            :FEBRUARY,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        MARCH =
          T.let(
            :MARCH,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        APRIL =
          T.let(
            :APRIL,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        MAY =
          T.let(
            :MAY,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        JUNE =
          T.let(
            :JUNE,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        JULY =
          T.let(
            :JULY,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        AUGUST =
          T.let(
            :AUGUST,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        SEPTEMBER =
          T.let(
            :SEPTEMBER,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        OCTOBER =
          T.let(
            :OCTOBER,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        NOVEMBER =
          T.let(
            :NOVEMBER,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )
        DECEMBER =
          T.let(
            :DECEMBER,
            HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicCalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
