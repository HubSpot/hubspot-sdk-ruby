# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicWeekReference < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicWeekReference,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The day of the week (SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY,
        # SATURDAY).
        sig do
          returns(HubspotSDK::Crm::PublicWeekReference::DayOfWeek::OrSymbol)
        end
        attr_accessor :day_of_week

        # Indicates the type of reference (WEEK).
        sig do
          returns(HubspotSDK::Crm::PublicWeekReference::ReferenceType::OrSymbol)
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
              HubspotSDK::Crm::PublicWeekReference::DayOfWeek::OrSymbol,
            reference_type:
              HubspotSDK::Crm::PublicWeekReference::ReferenceType::OrSymbol,
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
                HubspotSDK::Crm::PublicWeekReference::DayOfWeek::OrSymbol,
              reference_type:
                HubspotSDK::Crm::PublicWeekReference::ReferenceType::OrSymbol,
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicWeekReference::DayOfWeek)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FRIDAY =
            T.let(
              :FRIDAY,
              HubspotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          MONDAY =
            T.let(
              :MONDAY,
              HubspotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          SATURDAY =
            T.let(
              :SATURDAY,
              HubspotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          SUNDAY =
            T.let(
              :SUNDAY,
              HubspotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          THURSDAY =
            T.let(
              :THURSDAY,
              HubspotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          TUESDAY =
            T.let(
              :TUESDAY,
              HubspotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )
          WEDNESDAY =
            T.let(
              :WEDNESDAY,
              HubspotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicWeekReference::DayOfWeek::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates the type of reference (WEEK).
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicWeekReference::ReferenceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEEK =
            T.let(
              :WEEK,
              HubspotSDK::Crm::PublicWeekReference::ReferenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicWeekReference::ReferenceType::TaggedSymbol
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
