# typed: strong

module HubSpotSDK
  module Models
    module Events
      class WeekReference < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::WeekReference,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol)
        end
        attr_accessor :day_of_week

        sig do
          returns(
            HubSpotSDK::Events::WeekReference::ReferenceType::TaggedSymbol
          )
        end
        attr_accessor :reference_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            day_of_week: HubSpotSDK::Events::WeekReference::DayOfWeek::OrSymbol,
            reference_type:
              HubSpotSDK::Events::WeekReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          day_of_week:,
          reference_type:,
          hour: nil,
          millisecond: nil,
          minute: nil,
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day_of_week:
                HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol,
              reference_type:
                HubSpotSDK::Events::WeekReference::ReferenceType::TaggedSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        module DayOfWeek
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::WeekReference::DayOfWeek)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FRIDAY =
            T.let(
              :FRIDAY,
              HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol
            )
          MONDAY =
            T.let(
              :MONDAY,
              HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol
            )
          SATURDAY =
            T.let(
              :SATURDAY,
              HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol
            )
          SUNDAY =
            T.let(
              :SUNDAY,
              HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol
            )
          THURSDAY =
            T.let(
              :THURSDAY,
              HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol
            )
          TUESDAY =
            T.let(
              :TUESDAY,
              HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol
            )
          WEDNESDAY =
            T.let(
              :WEDNESDAY,
              HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::WeekReference::DayOfWeek::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::WeekReference::ReferenceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEEK =
            T.let(
              :WEEK,
              HubSpotSDK::Events::WeekReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::WeekReference::ReferenceType::TaggedSymbol
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
