# typed: strong

module HubspotSDK
  module Models
    class PublicIndexOffset < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicIndexOffset, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :days

      sig { params(days: Integer).void }
      attr_writer :days

      sig { returns(T.nilable(Integer)) }
      attr_reader :hours

      sig { params(hours: Integer).void }
      attr_writer :hours

      sig { returns(T.nilable(Integer)) }
      attr_reader :milliseconds

      sig { params(milliseconds: Integer).void }
      attr_writer :milliseconds

      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes

      sig { params(minutes: Integer).void }
      attr_writer :minutes

      sig { returns(T.nilable(Integer)) }
      attr_reader :months

      sig { params(months: Integer).void }
      attr_writer :months

      sig { returns(T.nilable(Integer)) }
      attr_reader :quarters

      sig { params(quarters: Integer).void }
      attr_writer :quarters

      sig { returns(T.nilable(Integer)) }
      attr_reader :seconds

      sig { params(seconds: Integer).void }
      attr_writer :seconds

      sig { returns(T.nilable(Integer)) }
      attr_reader :weeks

      sig { params(weeks: Integer).void }
      attr_writer :weeks

      sig { returns(T.nilable(Integer)) }
      attr_reader :years

      sig { params(years: Integer).void }
      attr_writer :years

      sig do
        params(
          days: Integer,
          hours: Integer,
          milliseconds: Integer,
          minutes: Integer,
          months: Integer,
          quarters: Integer,
          seconds: Integer,
          weeks: Integer,
          years: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        days: nil,
        hours: nil,
        milliseconds: nil,
        minutes: nil,
        months: nil,
        quarters: nil,
        seconds: nil,
        weeks: nil,
        years: nil
      )
      end

      sig do
        override.returns(
          {
            days: Integer,
            hours: Integer,
            milliseconds: Integer,
            minutes: Integer,
            months: Integer,
            quarters: Integer,
            seconds: Integer,
            weeks: Integer,
            years: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
