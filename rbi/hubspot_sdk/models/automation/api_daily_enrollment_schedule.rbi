# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIDailyEnrollmentSchedule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIDailyEnrollmentSchedule,
              HubspotSDK::Internal::AnyHash
            )
          end

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
            HubspotSDK::Automation::APIDailyEnrollmentSchedule::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash,
            type:
              HubspotSDK::Automation::APIDailyEnrollmentSchedule::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          time_of_day:,
          # The type of enrollment schedule this is, can be: "DAILY", "WEEKLY",
          # "MONTHLY_SPECIFIC_DAYS", "MONTHLY_RELATIVE_DAYS", "YEARLY"
          type:
        )
        end

        sig do
          override.returns(
            {
              time_of_day: HubspotSDK::Automation::APITimeOfDay,
              type:
                HubspotSDK::Automation::APIDailyEnrollmentSchedule::Type::OrSymbol
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
                HubspotSDK::Automation::APIDailyEnrollmentSchedule::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAILY =
            T.let(
              :DAILY,
              HubspotSDK::Automation::APIDailyEnrollmentSchedule::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIDailyEnrollmentSchedule::Type::TaggedSymbol
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
