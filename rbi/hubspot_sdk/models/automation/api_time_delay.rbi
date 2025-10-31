# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APITimeDelay < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APITimeDelay,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Automation::APITimeDelay::DaysOfWeek::OrSymbol]
          )
        end
        attr_accessor :days_of_week

        sig { returns(Integer) }
        attr_accessor :delta

        sig do
          returns(HubspotSDK::Automation::APITimeDelay::TimeUnit::OrSymbol)
        end
        attr_accessor :time_unit

        sig { returns(T.nilable(HubspotSDK::Automation::APITimeOfDay)) }
        attr_reader :time_of_day

        sig do
          params(time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash).void
        end
        attr_writer :time_of_day

        sig do
          returns(T.nilable(HubspotSDK::Automation::APIStaticTimeZoneStrategy))
        end
        attr_reader :time_zone_strategy

        sig do
          params(
            time_zone_strategy:
              HubspotSDK::Automation::APIStaticTimeZoneStrategy::OrHash
          ).void
        end
        attr_writer :time_zone_strategy

        sig do
          params(
            days_of_week:
              T::Array[
                HubspotSDK::Automation::APITimeDelay::DaysOfWeek::OrSymbol
              ],
            delta: Integer,
            time_unit: HubspotSDK::Automation::APITimeDelay::TimeUnit::OrSymbol,
            time_of_day: HubspotSDK::Automation::APITimeOfDay::OrHash,
            time_zone_strategy:
              HubspotSDK::Automation::APIStaticTimeZoneStrategy::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          days_of_week:,
          delta:,
          time_unit:,
          time_of_day: nil,
          time_zone_strategy: nil
        )
        end

        sig do
          override.returns(
            {
              days_of_week:
                T::Array[
                  HubspotSDK::Automation::APITimeDelay::DaysOfWeek::OrSymbol
                ],
              delta: Integer,
              time_unit:
                HubspotSDK::Automation::APITimeDelay::TimeUnit::OrSymbol,
              time_of_day: HubspotSDK::Automation::APITimeOfDay,
              time_zone_strategy:
                HubspotSDK::Automation::APIStaticTimeZoneStrategy
            }
          )
        end
        def to_hash
        end

        module DaysOfWeek
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APITimeDelay::DaysOfWeek)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONDAY =
            T.let(
              :MONDAY,
              HubspotSDK::Automation::APITimeDelay::DaysOfWeek::TaggedSymbol
            )
          TUESDAY =
            T.let(
              :TUESDAY,
              HubspotSDK::Automation::APITimeDelay::DaysOfWeek::TaggedSymbol
            )
          WEDNESDAY =
            T.let(
              :WEDNESDAY,
              HubspotSDK::Automation::APITimeDelay::DaysOfWeek::TaggedSymbol
            )
          THURSDAY =
            T.let(
              :THURSDAY,
              HubspotSDK::Automation::APITimeDelay::DaysOfWeek::TaggedSymbol
            )
          FRIDAY =
            T.let(
              :FRIDAY,
              HubspotSDK::Automation::APITimeDelay::DaysOfWeek::TaggedSymbol
            )
          SATURDAY =
            T.let(
              :SATURDAY,
              HubspotSDK::Automation::APITimeDelay::DaysOfWeek::TaggedSymbol
            )
          SUNDAY =
            T.let(
              :SUNDAY,
              HubspotSDK::Automation::APITimeDelay::DaysOfWeek::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APITimeDelay::DaysOfWeek::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::Automation::APITimeDelay::TimeUnit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NANOS =
            T.let(
              :NANOS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          MICROS =
            T.let(
              :MICROS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          MILLIS =
            T.let(
              :MILLIS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          SECONDS =
            T.let(
              :SECONDS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          MINUTES =
            T.let(
              :MINUTES,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          HOURS =
            T.let(
              :HOURS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          HALF_DAYS =
            T.let(
              :HALF_DAYS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          DAYS =
            T.let(
              :DAYS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          WEEKS =
            T.let(
              :WEEKS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          MONTHS =
            T.let(
              :MONTHS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          YEARS =
            T.let(
              :YEARS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          DECADES =
            T.let(
              :DECADES,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          CENTURIES =
            T.let(
              :CENTURIES,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          MILLENNIA =
            T.let(
              :MILLENNIA,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          ERAS =
            T.let(
              :ERAS,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )
          FOREVER =
            T.let(
              :FOREVER,
              HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APITimeDelay::TimeUnit::TaggedSymbol
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
