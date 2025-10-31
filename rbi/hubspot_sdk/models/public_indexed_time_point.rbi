# typed: strong

module HubspotSDK
  module Models
    class PublicIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicIndexedTimePoint,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.any(
            HubspotSDK::PublicNowReference,
            HubspotSDK::PublicTodayReference,
            HubspotSDK::PublicWeekReference,
            HubspotSDK::PublicFiscalQuarterReference,
            HubspotSDK::PublicFiscalYearReference,
            HubspotSDK::PublicYearReference,
            HubspotSDK::PublicQuarterReference,
            HubspotSDK::PublicMonthReference
          )
        )
      end
      attr_accessor :index_reference

      sig { returns(HubspotSDK::PublicIndexedTimePoint::TimeType::OrSymbol) }
      attr_accessor :time_type

      sig { returns(String) }
      attr_accessor :zone_id

      sig { returns(T.nilable(HubspotSDK::PublicIndexOffset)) }
      attr_reader :offset

      sig { params(offset: HubspotSDK::PublicIndexOffset::OrHash).void }
      attr_writer :offset

      sig { returns(T.nilable(String)) }
      attr_reader :timezone_source

      sig { params(timezone_source: String).void }
      attr_writer :timezone_source

      sig do
        params(
          index_reference:
            T.any(
              HubspotSDK::PublicNowReference::OrHash,
              HubspotSDK::PublicTodayReference::OrHash,
              HubspotSDK::PublicWeekReference::OrHash,
              HubspotSDK::PublicFiscalQuarterReference::OrHash,
              HubspotSDK::PublicFiscalYearReference::OrHash,
              HubspotSDK::PublicYearReference::OrHash,
              HubspotSDK::PublicQuarterReference::OrHash,
              HubspotSDK::PublicMonthReference::OrHash
            ),
          time_type: HubspotSDK::PublicIndexedTimePoint::TimeType::OrSymbol,
          zone_id: String,
          offset: HubspotSDK::PublicIndexOffset::OrHash,
          timezone_source: String
        ).returns(T.attached_class)
      end
      def self.new(
        index_reference:,
        time_type:,
        zone_id:,
        offset: nil,
        timezone_source: nil
      )
      end

      sig do
        override.returns(
          {
            index_reference:
              T.any(
                HubspotSDK::PublicNowReference,
                HubspotSDK::PublicTodayReference,
                HubspotSDK::PublicWeekReference,
                HubspotSDK::PublicFiscalQuarterReference,
                HubspotSDK::PublicFiscalYearReference,
                HubspotSDK::PublicYearReference,
                HubspotSDK::PublicQuarterReference,
                HubspotSDK::PublicMonthReference
              ),
            time_type: HubspotSDK::PublicIndexedTimePoint::TimeType::OrSymbol,
            zone_id: String,
            offset: HubspotSDK::PublicIndexOffset,
            timezone_source: String
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
              HubspotSDK::PublicNowReference,
              HubspotSDK::PublicTodayReference,
              HubspotSDK::PublicWeekReference,
              HubspotSDK::PublicFiscalQuarterReference,
              HubspotSDK::PublicFiscalYearReference,
              HubspotSDK::PublicYearReference,
              HubspotSDK::PublicQuarterReference,
              HubspotSDK::PublicMonthReference
            )
          end

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicIndexedTimePoint::IndexReference::Variants
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
            T.all(Symbol, HubspotSDK::PublicIndexedTimePoint::TimeType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDEXED =
          T.let(
            :INDEXED,
            HubspotSDK::PublicIndexedTimePoint::TimeType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicIndexedTimePoint::TimeType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
