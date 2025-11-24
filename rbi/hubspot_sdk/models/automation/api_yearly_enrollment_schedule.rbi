# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIYearlyEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :day_of_month

        sig do
          returns(
            HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::OrSymbol
          )
        end
        attr_accessor :month

        sig { returns(HubspotSDK::Automation::APITimeOfDay) }
        attr_reader :time_of_day

        sig do
          params(time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash).void
        end
        attr_writer :time_of_day

        sig do
          returns(
            HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            day_of_month: Integer,
            month:
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::OrSymbol,
            time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash,
            type:
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(day_of_month:, month:, time_of_day:, type:)
        end

        sig do
          override.returns(
            {
              day_of_month: Integer,
              month:
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::OrSymbol,
              time_of_day: HubspotSDK::Automation::APITimeOfDay,
              type:
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Month
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APRIL =
            T.let(
              :APRIL,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          AUGUST =
            T.let(
              :AUGUST,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          DECEMBER =
            T.let(
              :DECEMBER,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          FEBRUARY =
            T.let(
              :FEBRUARY,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          JANUARY =
            T.let(
              :JANUARY,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          JULY =
            T.let(
              :JULY,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          JUNE =
            T.let(
              :JUNE,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          MARCH =
            T.let(
              :MARCH,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          MAY =
            T.let(
              :MAY,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          NOVEMBER =
            T.let(
              :NOVEMBER,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          OCTOBER =
            T.let(
              :OCTOBER,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )
          SEPTEMBER =
            T.let(
              :SEPTEMBER,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Month::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          YEARLY =
            T.let(
              :YEARLY,
              HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIYearlyEnrollmentSchedule::Type::TaggedSymbol
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
