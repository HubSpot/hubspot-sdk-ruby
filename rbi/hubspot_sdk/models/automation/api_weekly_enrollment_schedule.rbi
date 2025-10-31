# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIWeeklyEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::OrSymbol
            ]
          )
        end
        attr_accessor :days_of_week

        sig { returns(HubspotSDK::Automation::APITimeOfDay) }
        attr_reader :time_of_day

        sig do
          params(time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash).void
        end
        attr_writer :time_of_day

        sig do
          returns(
            HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            days_of_week:
              T::Array[
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::OrSymbol
              ],
            time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash,
            type:
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(days_of_week:, time_of_day:, type:)
        end

        sig do
          override.returns(
            {
              days_of_week:
                T::Array[
                  HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::OrSymbol
                ],
              time_of_day: HubspotSDK::Automation::APITimeOfDay,
              type:
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module DaysOfWeek
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONDAY =
            T.let(
              :MONDAY,
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::TaggedSymbol
            )
          TUESDAY =
            T.let(
              :TUESDAY,
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::TaggedSymbol
            )
          WEDNESDAY =
            T.let(
              :WEDNESDAY,
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::TaggedSymbol
            )
          THURSDAY =
            T.let(
              :THURSDAY,
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::TaggedSymbol
            )
          FRIDAY =
            T.let(
              :FRIDAY,
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::TaggedSymbol
            )
          SATURDAY =
            T.let(
              :SATURDAY,
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::TaggedSymbol
            )
          SUNDAY =
            T.let(
              :SUNDAY,
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::DaysOfWeek::TaggedSymbol
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
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEEKLY =
            T.let(
              :WEEKLY,
              HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIWeeklyEnrollmentSchedule::Type::TaggedSymbol
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
