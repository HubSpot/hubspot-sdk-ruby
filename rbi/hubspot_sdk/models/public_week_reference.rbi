# typed: strong

module HubspotSDK
  module Models
    class PublicWeekReference < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicWeekReference, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(HubspotSDK::PublicWeekReference::DayOfWeek::OrSymbol) }
      attr_accessor :day_of_week

      sig { returns(HubspotSDK::PublicWeekReference::ReferenceType::OrSymbol) }
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
          day_of_week: HubspotSDK::PublicWeekReference::DayOfWeek::OrSymbol,
          reference_type:
            HubspotSDK::PublicWeekReference::ReferenceType::OrSymbol,
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
            day_of_week: HubspotSDK::PublicWeekReference::DayOfWeek::OrSymbol,
            reference_type:
              HubspotSDK::PublicWeekReference::ReferenceType::OrSymbol,
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
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicWeekReference::DayOfWeek)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MONDAY =
          T.let(
            :MONDAY,
            HubspotSDK::PublicWeekReference::DayOfWeek::TaggedSymbol
          )
        TUESDAY =
          T.let(
            :TUESDAY,
            HubspotSDK::PublicWeekReference::DayOfWeek::TaggedSymbol
          )
        WEDNESDAY =
          T.let(
            :WEDNESDAY,
            HubspotSDK::PublicWeekReference::DayOfWeek::TaggedSymbol
          )
        THURSDAY =
          T.let(
            :THURSDAY,
            HubspotSDK::PublicWeekReference::DayOfWeek::TaggedSymbol
          )
        FRIDAY =
          T.let(
            :FRIDAY,
            HubspotSDK::PublicWeekReference::DayOfWeek::TaggedSymbol
          )
        SATURDAY =
          T.let(
            :SATURDAY,
            HubspotSDK::PublicWeekReference::DayOfWeek::TaggedSymbol
          )
        SUNDAY =
          T.let(
            :SUNDAY,
            HubspotSDK::PublicWeekReference::DayOfWeek::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicWeekReference::DayOfWeek::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ReferenceType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicWeekReference::ReferenceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEEK =
          T.let(
            :WEEK,
            HubspotSDK::PublicWeekReference::ReferenceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicWeekReference::ReferenceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
