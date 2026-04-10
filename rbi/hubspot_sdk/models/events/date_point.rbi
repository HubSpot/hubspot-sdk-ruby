# typed: strong

module HubSpotSDK
  module Models
    module Events
      class DatePoint < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Events::DatePoint, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :day

        sig { returns(Integer) }
        attr_accessor :month

        sig { returns(HubSpotSDK::Events::DatePoint::TimeType::TaggedSymbol) }
        attr_accessor :time_type

        sig do
          returns(HubSpotSDK::Events::DatePoint::TimezoneSource::TaggedSymbol)
        end
        attr_accessor :timezone_source

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

        sig do
          params(
            day: Integer,
            month: Integer,
            time_type: HubSpotSDK::Events::DatePoint::TimeType::OrSymbol,
            timezone_source:
              HubSpotSDK::Events::DatePoint::TimezoneSource::OrSymbol,
            year: Integer,
            zone_id: String,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          day:,
          month:,
          time_type:,
          timezone_source:,
          year:,
          zone_id:,
          hour: nil,
          millisecond: nil,
          minute: nil,
          second: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              month: Integer,
              time_type: HubSpotSDK::Events::DatePoint::TimeType::TaggedSymbol,
              timezone_source:
                HubSpotSDK::Events::DatePoint::TimezoneSource::TaggedSymbol,
              year: Integer,
              zone_id: String,
              hour: Integer,
              millisecond: Integer,
              minute: Integer,
              second: Integer
            }
          )
        end
        def to_hash
        end

        module TimeType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::DatePoint::TimeType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATE =
            T.let(:DATE, HubSpotSDK::Events::DatePoint::TimeType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Events::DatePoint::TimeType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module TimezoneSource
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::DatePoint::TimezoneSource)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOM =
            T.let(
              :CUSTOM,
              HubSpotSDK::Events::DatePoint::TimezoneSource::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubSpotSDK::Events::DatePoint::TimezoneSource::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubSpotSDK::Events::DatePoint::TimezoneSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::DatePoint::TimezoneSource::TaggedSymbol
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
