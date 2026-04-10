# typed: strong

module HubSpotSDK
  module Models
    module Events
      class CalendarDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::CalendarDatePropertyOperation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_objects_with_no_value_set

        sig { returns(String) }
        attr_accessor :operation_type

        sig do
          returns(
            HubSpotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(String) }
        attr_accessor :operator_name

        sig do
          returns(
            HubSpotSDK::Events::CalendarDatePropertyOperation::PropertyType::TaggedSymbol
          )
        end
        attr_accessor :property_type

        sig do
          returns(
            HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
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
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          )
        end
        attr_reader :fiscal_year_start

        sig do
          params(
            fiscal_year_start:
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::OrSymbol
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
              HubSpotSDK::Events::CalendarDatePropertyOperation::Operator::OrSymbol,
            operator_name: String,
            property_type:
              HubSpotSDK::Events::CalendarDatePropertyOperation::PropertyType::OrSymbol,
            time_unit:
              HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::OrSymbol,
            time_unit_count: Integer,
            use_fiscal_year: T::Boolean,
            default_value: String,
            fiscal_year_start:
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::OrSymbol,
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
                HubSpotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol,
              operator_name: String,
              property_type:
                HubSpotSDK::Events::CalendarDatePropertyOperation::PropertyType::TaggedSymbol,
              time_unit:
                HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol,
              time_unit_count: Integer,
              use_fiscal_year: T::Boolean,
              default_value: String,
              fiscal_year_start:
                HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol,
              render_spec: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::CalendarDatePropertyOperation::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_LAST_TIME_UNIT =
            T.let(
              :IN_LAST_TIME_UNIT,
              HubSpotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
            )
          IN_NEXT_TIME_UNIT =
            T.let(
              :IN_NEXT_TIME_UNIT,
              HubSpotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
            )
          IN_THIS_TIME_UNIT =
            T.let(
              :IN_THIS_TIME_UNIT,
              HubSpotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
            )
          IN_THIS_TIME_UNIT_SO_FAR =
            T.let(
              :IN_THIS_TIME_UNIT_SO_FAR,
              HubSpotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::CalendarDatePropertyOperation::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::CalendarDatePropertyOperation::PropertyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALENDAR_DATE =
            T.let(
              :"calendar-date",
              HubSpotSDK::Events::CalendarDatePropertyOperation::PropertyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::CalendarDatePropertyOperation::PropertyType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimeUnit
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :DAY,
              HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )
          MONTH =
            T.let(
              :MONTH,
              HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )
          QUARTER =
            T.let(
              :QUARTER,
              HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )
          WEEK =
            T.let(
              :WEEK,
              HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )
          YEAR =
            T.let(
              :YEAR,
              HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::CalendarDatePropertyOperation::TimeUnit::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module FiscalYearStart
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APRIL =
            T.let(
              :APRIL,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          AUGUST =
            T.let(
              :AUGUST,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          DECEMBER =
            T.let(
              :DECEMBER,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          FEBRUARY =
            T.let(
              :FEBRUARY,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JANUARY =
            T.let(
              :JANUARY,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JULY =
            T.let(
              :JULY,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          JUNE =
            T.let(
              :JUNE,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          MARCH =
            T.let(
              :MARCH,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          MAY =
            T.let(
              :MAY,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          NOVEMBER =
            T.let(
              :NOVEMBER,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          OCTOBER =
            T.let(
              :OCTOBER,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )
          SEPTEMBER =
            T.let(
              :SEPTEMBER,
              HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::CalendarDatePropertyOperation::FiscalYearStart::TaggedSymbol
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
