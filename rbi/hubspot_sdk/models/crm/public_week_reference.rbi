# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicWeekReference < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicWeekReference,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The day of the week (SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY,
        # SATURDAY).
        sig do
          returns(HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::OrSymbol)
        end
        attr_accessor :day_of_week

        # Indicates the type of reference (WEEK).
        sig do
          returns(HubSpotSDK::Crm::PublicWeekReference::ReferenceType::OrSymbol)
        end
        attr_accessor :reference_type

        # The hour component of the week reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        # The millisecond component of the week reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        # The minute component of the week reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        # The second component of the week reference.
        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        sig do
          params(
            day_of_week:
              HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::OrSymbol,
            reference_type:
              HubSpotSDK::Crm::PublicWeekReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The day of the week (SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY,
          # SATURDAY).
          day_of_week:,
          # Indicates the type of reference (WEEK).
          reference_type:,
          # The hour component of the week reference.
          hour: nil,
          # The millisecond component of the week reference.
          millisecond: nil,
          # The minute component of the week reference.
          minute: nil,
          # The second component of the week reference.
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day_of_week:
                HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::OrSymbol,
              reference_type:
                HubSpotSDK::Crm::PublicWeekReference::ReferenceType::OrSymbol,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        # The day of the week (SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY,
        # SATURDAY).
        module DayOfWeek
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicWeekReference::DayOfWeek)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FRIDAY =
            T.let(
              :FRIDAY,
              HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          MONDAY =
            T.let(
              :MONDAY,
              HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          SATURDAY =
            T.let(
              :SATURDAY,
              HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          SUNDAY =
            T.let(
              :SUNDAY,
              HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          THURSDAY =
            T.let(
              :THURSDAY,
              HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          TUESDAY =
            T.let(
              :TUESDAY,
              HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          WEDNESDAY =
            T.let(
              :WEDNESDAY,
              HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates the type of reference (WEEK).
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicWeekReference::ReferenceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEEK =
            T.let(
              :WEEK,
              HubSpotSDK::Crm::PublicWeekReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicWeekReference::ReferenceType::TaggedSymbol
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
