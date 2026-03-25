# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalReminder < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalReminder,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The number of timeUnits prior to the meeting start when the reminder will be
        # sent.
        sig { returns(Integer) }
        attr_accessor :number_of_time_units

        # Accepted values are: WEEKS, DAYS, HOURS, MINUTES.
        sig do
          returns(HubspotSDK::Scheduler::ExternalReminder::TimeUnit::OrSymbol)
        end
        attr_accessor :time_unit

        sig do
          params(
            number_of_time_units: Integer,
            time_unit:
              HubspotSDK::Scheduler::ExternalReminder::TimeUnit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of timeUnits prior to the meeting start when the reminder will be
          # sent.
          number_of_time_units:,
          # Accepted values are: WEEKS, DAYS, HOURS, MINUTES.
          time_unit:
        )
        end

        sig do
          override.returns(
            {
              number_of_time_units: Integer,
              time_unit:
                HubspotSDK::Scheduler::ExternalReminder::TimeUnit::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Accepted values are: WEEKS, DAYS, HOURS, MINUTES.
        module TimeUnit
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Scheduler::ExternalReminder::TimeUnit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAYS =
            T.let(
              :DAYS,
              HubspotSDK::Scheduler::ExternalReminder::TimeUnit::TaggedSymbol
            )
          HOURS =
            T.let(
              :HOURS,
              HubspotSDK::Scheduler::ExternalReminder::TimeUnit::TaggedSymbol
            )
          MINUTES =
            T.let(
              :MINUTES,
              HubspotSDK::Scheduler::ExternalReminder::TimeUnit::TaggedSymbol
            )
          WEEKS =
            T.let(
              :WEEKS,
              HubspotSDK::Scheduler::ExternalReminder::TimeUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Scheduler::ExternalReminder::TimeUnit::TaggedSymbol
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
