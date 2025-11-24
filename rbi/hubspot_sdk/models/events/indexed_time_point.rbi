# typed: strong

module HubspotSDK
  module Models
    module Events
      class IndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::IndexedTimePoint,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Events::IndexedTimePoint::IndexReference::Variants
          )
        end
        attr_accessor :index_reference

        sig do
          returns(HubspotSDK::Events::IndexedTimePoint::TimeType::TaggedSymbol)
        end
        attr_accessor :time_type

        sig do
          returns(
            HubspotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
          )
        end
        attr_accessor :timezone_source

        sig { returns(String) }
        attr_accessor :zone_id

        sig { returns(T.nilable(HubspotSDK::Events::IndexOffset)) }
        attr_reader :offset

        sig { params(offset: HubspotSDK::Events::IndexOffset::OrHash).void }
        attr_writer :offset

        sig do
          params(
            index_reference:
              T.any(
                HubspotSDK::Events::NowReference::OrHash,
                HubspotSDK::Events::TodayReference::OrHash,
                HubspotSDK::Events::WeekReference::OrHash,
                HubspotSDK::Events::MonthReference::OrHash,
                HubspotSDK::Events::QuarterReference::OrHash,
                HubspotSDK::Events::FiscalQuarter::OrHash,
                HubspotSDK::Events::YearReference::OrHash,
                HubspotSDK::Events::FiscalYear::OrHash
              ),
            time_type: HubspotSDK::Events::IndexedTimePoint::TimeType::OrSymbol,
            timezone_source:
              HubspotSDK::Events::IndexedTimePoint::TimezoneSource::OrSymbol,
            zone_id: String,
            offset: HubspotSDK::Events::IndexOffset::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          index_reference:,
          time_type:,
          timezone_source:,
          zone_id:,
          offset: nil
        )
        end

        sig do
          override.returns(
            {
              index_reference:
                HubspotSDK::Events::IndexedTimePoint::IndexReference::Variants,
              time_type:
                HubspotSDK::Events::IndexedTimePoint::TimeType::TaggedSymbol,
              timezone_source:
                HubspotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol,
              zone_id: String,
              offset: HubspotSDK::Events::IndexOffset
            }
          )
        end
        def to_hash
        end

        module IndexReference
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Events::NowReference,
                HubspotSDK::Events::TodayReference,
                HubspotSDK::Events::WeekReference,
                HubspotSDK::Events::MonthReference,
                HubspotSDK::Events::QuarterReference,
                HubspotSDK::Events::FiscalQuarter,
                HubspotSDK::Events::YearReference,
                HubspotSDK::Events::FiscalYear
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::IndexedTimePoint::IndexReference::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::IndexedTimePoint::TimeType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INDEXED =
            T.let(
              :INDEXED,
              HubspotSDK::Events::IndexedTimePoint::TimeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::IndexedTimePoint::TimeType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimezoneSource
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::IndexedTimePoint::TimezoneSource
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOM =
            T.let(
              :CUSTOM,
              HubspotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubspotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::IndexedTimePoint::TimezoneSource::TaggedSymbol
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
