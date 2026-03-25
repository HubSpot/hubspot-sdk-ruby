# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicDatePoint < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicDatePoint,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The day component of the date.
        sig { returns(Integer) }
        attr_accessor :day

        # The month component of the date.
        sig { returns(Integer) }
        attr_accessor :month

        # Specifies the type of time (DATE).
        sig { returns(HubspotSDK::Crm::PublicDatePoint::TimeType::OrSymbol) }
        attr_accessor :time_type

        # The year component of the date.
        sig { returns(Integer) }
        attr_accessor :year

        # The identifier for the time zone.
        sig { returns(String) }
        attr_accessor :zone_id

        # The hour component of the time.
        sig { returns(T.nilable(Integer)) }
        attr_reader :hour

        sig { params(hour: Integer).void }
        attr_writer :hour

        # The millisecond component of the time.
        sig { returns(T.nilable(Integer)) }
        attr_reader :millisecond

        sig { params(millisecond: Integer).void }
        attr_writer :millisecond

        # The minute component of the time.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minute

        sig { params(minute: Integer).void }
        attr_writer :minute

        # The second component of the time.
        sig { returns(T.nilable(Integer)) }
        attr_reader :second

        sig { params(second: Integer).void }
        attr_writer :second

        # The source of the time zone information.
        sig { returns(T.nilable(String)) }
        attr_reader :timezone_source

        sig { params(timezone_source: String).void }
        attr_writer :timezone_source

        sig do
          params(
            day: Integer,
            month: Integer,
            time_type: HubspotSDK::Crm::PublicDatePoint::TimeType::OrSymbol,
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
          # The day component of the date.
          day:,
          # The month component of the date.
          month:,
          # Specifies the type of time (DATE).
          time_type:,
          # The year component of the date.
          year:,
          # The identifier for the time zone.
          zone_id:,
          # The hour component of the time.
          hour: nil,
          # The millisecond component of the time.
          millisecond: nil,
          # The minute component of the time.
          minute: nil,
          # The second component of the time.
          second: nil,
          # The source of the time zone information.
          timezone_source: nil
        )
        end

        sig do
          override.returns(
            {
              day: Integer,
              month: Integer,
              time_type: HubspotSDK::Crm::PublicDatePoint::TimeType::OrSymbol,
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

        # Specifies the type of time (DATE).
        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicDatePoint::TimeType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATE =
            T.let(
              :DATE,
              HubspotSDK::Crm::PublicDatePoint::TimeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Crm::PublicDatePoint::TimeType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
