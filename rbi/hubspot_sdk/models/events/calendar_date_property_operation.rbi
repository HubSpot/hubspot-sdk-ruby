# typed: strong

module HubspotSDK
  module Models
    module Events
      class CalendarDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::CalendarDatePropertyOperation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubspotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubspotSDK::Events::CalendarDatePropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig do
          returns(
            HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
          )
        end
        attr_accessor :time_unit

        sig { returns(Integer) }
        attr_accessor :time_unit_count

        sig { returns(T::Boolean) }
        attr_accessor :use_fiscal_year

        sig { returns(T.nilable(String)) }
        attr_reader :default_value

        sig { params(default_value: String).void }
        attr_writer :default_value

        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          )
        end
        attr_reader :fiscal_year_start

        sig do
          params(
            fiscal_year_start:
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::OrSymbol
          ).void
        end
        attr_writer :fiscal_year_start

        sig { returns(T.nilable(String)) }
        attr_reader :render_spec

        sig { params(render_spec: String).void }
        attr_writer :render_spec

        sig do
          params(
            include_objects_with_no_value_set: T::Boolean,
            operation_type: String,
            operator:
              HubspotSDK::Events::CalendarDatePropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubspotSDK::Events::CalendarDatePropertyOperation::PropertyType::OrSymbol,
            time_unit:
              HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::OrSymbol,
            time_unit_count: Integer,
            use_fiscal_year: T::Boolean,
            default_value: String,
            fiscal_year_start:
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::OrSymbol,
            render_spec: String
          ).returns(T.attached_class)
        end
        def self.new(
          include_objects_with_no_value_set:,
          operation_type:,
          operator:,
          operator_name:,
          property_type:,
          time_unit:,
          time_unit_count:,
          use_fiscal_year:,
          default_value: nil,
          fiscal_year_start: nil,
          render_spec: nil
        )
        end

        sig do
          override.returns(
            {
              include_objects_with_no_value_set: T::Boolean,
              operation_type: String,
              operator:
                HubspotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubspotSDK::Events::CalendarDatePropertyOperation::PropertyType::TaggedSymbol,
              time_unit:
                HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol,
              time_unit_count: Integer,
              use_fiscal_year: T::Boolean,
              default_value: String,
              fiscal_year_start:
                HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol,
              render_spec: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::CalendarDatePropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_LAST_TIME_UNIT =
            T.let(
              :IN_LAST_TIME_UNIT,
              HubspotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
            )
          IN_NEXT_TIME_UNIT =
            T.let(
              :IN_NEXT_TIME_UNIT,
              HubspotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
            )
          IN_THIS_TIME_UNIT =
            T.let(
              :IN_THIS_TIME_UNIT,
              HubspotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
            )
          IN_THIS_TIME_UNIT_SO_FAR =
            T.let(
              :IN_THIS_TIME_UNIT_SO_FAR,
              HubspotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::CalendarDatePropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALENDAR_DATE =
            T.let(
              :"calendar-date",
              HubspotSDK::Events::CalendarDatePropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::CalendarDatePropertyOperation::PropertyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimeUnit
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :DAY,
              HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )
          MONTH =
            T.let(
              :MONTH,
              HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )
          QUARTER =
            T.let(
              :QUARTER,
              HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )
          WEEK =
            T.let(
              :WEEK,
              HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )
          YEAR =
            T.let(
              :YEAR,
              HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
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
                HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APRIL =
            T.let(
              :APRIL,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          AUGUST =
            T.let(
              :AUGUST,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          DECEMBER =
            T.let(
              :DECEMBER,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          FEBRUARY =
            T.let(
              :FEBRUARY,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JANUARY =
            T.let(
              :JANUARY,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JULY =
            T.let(
              :JULY,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JUNE =
            T.let(
              :JUNE,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          MARCH =
            T.let(
              :MARCH,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          MAY =
            T.let(
              :MAY,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          NOVEMBER =
            T.let(
              :NOVEMBER,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          OCTOBER =
            T.let(
              :OCTOBER,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          SEPTEMBER =
            T.let(
              :SEPTEMBER,
              HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
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
