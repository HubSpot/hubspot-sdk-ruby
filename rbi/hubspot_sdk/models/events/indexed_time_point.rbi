# typed: strong

module HubSpotSDK
  module Models
    module Events
      class IndexedTimePoint < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::IndexedTimePoint,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Events::IndexedTimePoint::IndexReference::Variants
          )
        end
        attr_accessor :index_reference

        sig do
          returns(HubSpotSDK::Events::IndexedTimePoint::TimeType::TaggedSymbol)
        end
        attr_accessor :time_type

        sig do
          returns(
            HubSpotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
          )
        end
        attr_accessor :timezone_source

        sig { returns(String) }
        attr_accessor :zone_id

        sig { returns(T.nilable(HubSpotSDK::Events::IndexOffset)) }
        attr_reader :offset

        sig { params(offset: HubSpotSDK::Events::IndexOffset::OrHash).void }
        attr_writer :offset

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :should_generate_refresh_time

        sig { params(should_generate_refresh_time: T::Boolean).void }
        attr_writer :should_generate_refresh_time

        sig do
          params(
            index_reference:
              T.any(
                HubSpotSDK::Events::NowReference::OrHash,
                HubSpotSDK::Events::TodayReference::OrHash,
                HubSpotSDK::Events::WeekReference::OrHash,
                HubSpotSDK::Events::MonthReference::OrHash,
                HubSpotSDK::Events::QuarterReference::OrHash,
                HubSpotSDK::Events::FiscalQuarter::OrHash,
                HubSpotSDK::Events::YearReference::OrHash,
                HubSpotSDK::Events::FiscalYear::OrHash
              ),
            time_type: HubSpotSDK::Events::IndexedTimePoint::TimeType::OrSymbol,
            timezone_source:
              HubSpotSDK::Events::IndexedTimePoint::TimezoneSource::OrSymbol,
            zone_id: String,
            offset: HubSpotSDK::Events::IndexOffset::OrHash,
            should_generate_refresh_time: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          index_reference:,
          time_type:,
          timezone_source:,
          zone_id:,
          offset: nil,
          should_generate_refresh_time: nil
        )
        end

        sig do
          override.returns(
            {
              index_reference:
                HubSpotSDK::Events::IndexedTimePoint::IndexReference::Variants,
              time_type:
                HubSpotSDK::Events::IndexedTimePoint::TimeType::TaggedSymbol,
              timezone_source:
                HubSpotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol,
              zone_id: String,
              offset: HubSpotSDK::Events::IndexOffset,
              should_generate_refresh_time: T::Boolean
            }
          )
        end
        def to_hash
        end

        module IndexReference
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Events::NowReference,
                HubSpotSDK::Events::TodayReference,
                HubSpotSDK::Events::WeekReference,
                HubSpotSDK::Events::MonthReference,
                HubSpotSDK::Events::QuarterReference,
                HubSpotSDK::Events::FiscalQuarter,
                HubSpotSDK::Events::YearReference,
                HubSpotSDK::Events::FiscalYear
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::IndexedTimePoint::IndexReference::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module TimeType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::IndexedTimePoint::TimeType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INDEXED =
            T.let(
              :INDEXED,
              HubSpotSDK::Events::IndexedTimePoint::TimeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::IndexedTimePoint::TimeType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimezoneSource
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::IndexedTimePoint::TimezoneSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOM =
            T.let(
              :CUSTOM,
              HubSpotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubSpotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubSpotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
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
