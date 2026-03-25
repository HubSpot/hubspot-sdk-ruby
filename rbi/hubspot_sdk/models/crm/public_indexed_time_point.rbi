# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicIndexedTimePoint,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the reference point in time for the indexed time point.
        sig do
          returns(
            T.any(
              HubspotSDK::Crm::PublicNowReference,
              HubspotSDK::Crm::PublicTodayReference,
              HubspotSDK::Crm::PublicWeekReference,
              HubspotSDK::Crm::PublicFiscalQuarterReference,
              HubspotSDK::Crm::PublicFiscalYearReference,
              HubspotSDK::Crm::PublicYearReference,
              HubspotSDK::Crm::PublicQuarterReference,
              HubspotSDK::Crm::PublicMonthReference
            )
          )
        end
        attr_accessor :index_reference

        # Defines the type of time (INDEXED).
        sig do
          returns(HubspotSDK::Crm::PublicIndexedTimePoint::TimeType::OrSymbol)
        end
        attr_accessor :time_type

        # Indicates the identifier for the time zone associated with the indexed time
        # point.
        sig { returns(String) }
        attr_accessor :zone_id

        sig { returns(T.nilable(HubspotSDK::Crm::PublicIndexOffset)) }
        attr_reader :offset

        sig { params(offset: HubspotSDK::Crm::PublicIndexOffset::OrHash).void }
        attr_writer :offset

        # Specifies the source of the time zone information for the indexed time point
        # (CUSTOM, USER, PORTAL).
        sig { returns(T.nilable(String)) }
        attr_reader :timezone_source

        sig { params(timezone_source: String).void }
        attr_writer :timezone_source

        sig do
          params(
            index_reference:
              T.any(
                HubspotSDK::Crm::PublicNowReference::OrHash,
                HubspotSDK::Crm::PublicTodayReference::OrHash,
                HubspotSDK::Crm::PublicWeekReference::OrHash,
                HubspotSDK::Crm::PublicFiscalQuarterReference::OrHash,
                HubspotSDK::Crm::PublicFiscalYearReference::OrHash,
                HubspotSDK::Crm::PublicYearReference::OrHash,
                HubspotSDK::Crm::PublicQuarterReference::OrHash,
                HubspotSDK::Crm::PublicMonthReference::OrHash
              ),
            time_type:
              HubspotSDK::Crm::PublicIndexedTimePoint::TimeType::OrSymbol,
            zone_id: String,
            offset: HubspotSDK::Crm::PublicIndexOffset::OrHash,
            timezone_source: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the reference point in time for the indexed time point.
          index_reference:,
          # Defines the type of time (INDEXED).
          time_type:,
          # Indicates the identifier for the time zone associated with the indexed time
          # point.
          zone_id:,
          offset: nil,
          # Specifies the source of the time zone information for the indexed time point
          # (CUSTOM, USER, PORTAL).
          timezone_source: nil
        )
        end

        sig do
          override.returns(
            {
              index_reference:
                T.any(
                  HubspotSDK::Crm::PublicNowReference,
                  HubspotSDK::Crm::PublicTodayReference,
                  HubspotSDK::Crm::PublicWeekReference,
                  HubspotSDK::Crm::PublicFiscalQuarterReference,
                  HubspotSDK::Crm::PublicFiscalYearReference,
                  HubspotSDK::Crm::PublicYearReference,
                  HubspotSDK::Crm::PublicQuarterReference,
                  HubspotSDK::Crm::PublicMonthReference
                ),
              time_type:
                HubspotSDK::Crm::PublicIndexedTimePoint::TimeType::OrSymbol,
              zone_id: String,
              offset: HubspotSDK::Crm::PublicIndexOffset,
              timezone_source: String
            }
          )
        end
        def to_hash
        end

        # Specifies the reference point in time for the indexed time point.
        module IndexReference
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicNowReference,
                HubspotSDK::Crm::PublicTodayReference,
                HubspotSDK::Crm::PublicWeekReference,
                HubspotSDK::Crm::PublicFiscalQuarterReference,
                HubspotSDK::Crm::PublicFiscalYearReference,
                HubspotSDK::Crm::PublicYearReference,
                HubspotSDK::Crm::PublicQuarterReference,
                HubspotSDK::Crm::PublicMonthReference
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicIndexedTimePoint::IndexReference::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Defines the type of time (INDEXED).
        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicIndexedTimePoint::TimeType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INDEXED =
            T.let(
              :INDEXED,
              HubspotSDK::Crm::PublicIndexedTimePoint::TimeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicIndexedTimePoint::TimeType::TaggedSymbol
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
