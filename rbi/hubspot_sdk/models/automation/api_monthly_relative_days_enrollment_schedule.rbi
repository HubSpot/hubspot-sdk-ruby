# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIMonthlyRelativeDaysEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays::OrSymbol
          )
        end
        attr_accessor :monthly_relative_days

        sig { returns(HubspotSDK::Automation::APITimeOfDay) }
        attr_reader :time_of_day

        sig do
          params(time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash).void
        end
        attr_writer :time_of_day

        sig do
          returns(
            HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            monthly_relative_days:
              HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays::OrSymbol,
            time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash,
            type:
              HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(monthly_relative_days:, time_of_day:, type:)
        end

        sig do
          override.returns(
            {
              monthly_relative_days:
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays::OrSymbol,
              time_of_day: HubspotSDK::Automation::APITimeOfDay,
              type:
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module MonthlyRelativeDays
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LAST_DAY_OF_MONTH =
            T.let(
              :LAST_DAY_OF_MONTH,
              HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays::TaggedSymbol
            )
          FIRST_MONDAY_OF_MONTH =
            T.let(
              :FIRST_MONDAY_OF_MONTH,
              HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::MonthlyRelativeDays::TaggedSymbol
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
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY_RELATIVE_DAYS =
            T.let(
              :MONTHLY_RELATIVE_DAYS,
              HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIMonthlyRelativeDaysEnrollmentSchedule::Type::TaggedSymbol
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
