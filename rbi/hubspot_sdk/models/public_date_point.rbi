# typed: strong

module HubspotSDK
  module Models
    class PublicDatePoint < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicDatePoint, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :day

      sig { returns(Integer) }
      attr_accessor :month

      sig { returns(HubspotSDK::PublicDatePoint::TimeType::OrSymbol) }
      attr_accessor :time_type

      sig { returns(Integer) }
      attr_accessor :year

      sig { returns(String) }
      attr_accessor :zone_id

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

      sig { returns(T.nilable(String)) }
      attr_reader :timezone_source

      sig { params(timezone_source: String).void }
      attr_writer :timezone_source

      sig do
        params(
          day: Integer,
          month: Integer,
          time_type: HubspotSDK::PublicDatePoint::TimeType::OrSymbol,
          year: Integer,
          zone_id: String,
          hour: Integer,
          millisecond: Integer,
          minute: Integer,
          second: Integer,
          timezone_source: String
        ).returns(T.attached_class)
      end
      def self.new(
        day:,
        month:,
        time_type:,
        year:,
        zone_id:,
        hour: nil,
        millisecond: nil,
        minute: nil,
        second: nil,
        timezone_source: nil
      )
      end

      sig do
        override.returns(
          {
            day: Integer,
            month: Integer,
            time_type: HubspotSDK::PublicDatePoint::TimeType::OrSymbol,
            year: Integer,
            zone_id: String,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer,
            timezone_source: String
          }
        )
      end
      def to_hash
      end

      module TimeType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, HubspotSDK::PublicDatePoint::TimeType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DATE = T.let(:DATE, HubspotSDK::PublicDatePoint::TimeType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicDatePoint::TimeType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
