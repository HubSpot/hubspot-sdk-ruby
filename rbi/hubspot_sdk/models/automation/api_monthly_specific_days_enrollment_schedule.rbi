# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIMonthlySpecificDaysEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Which days of the month to run this workflow on.
        sig { returns(T::Array[Integer]) }
        attr_accessor :days_of_month

        sig { returns(HubspotSDK::Automation::APITimeOfDay) }
        attr_reader :time_of_day

        sig do
          params(time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash).void
        end
        attr_writer :time_of_day

        # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        sig do
          returns(
            HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            days_of_month: T::Array[Integer],
            time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash,
            type:
              HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Which days of the month to run this workflow on.
          days_of_month:,
          time_of_day:,
          # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
          # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
          type:
        )
        end

        sig do
          override.returns(
            {
              days_of_month: T::Array[Integer],
              time_of_day: HubspotSDK::Automation::APITimeOfDay,
              type:
                HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
        # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY_SPECIFIC_DAYS =
            T.let(
              :MONTHLY_SPECIFIC_DAYS,
              HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIMonthlySpecificDaysEnrollmentSchedule::Type::TaggedSymbol
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
