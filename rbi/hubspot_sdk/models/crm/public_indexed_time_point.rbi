# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicIndexedTimePoint < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicIndexedTimePoint,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the reference point in time for the indexed time point.
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicNowReference,
              HubSpotSDK::Crm::PublicTodayReference,
              HubSpotSDK::Crm::PublicWeekReference,
              HubSpotSDK::Crm::PublicFiscalQuarterReference,
              HubSpotSDK::Crm::PublicFiscalYearReference,
              HubSpotSDK::Crm::PublicYearReference,
              HubSpotSDK::Crm::PublicQuarterReference,
              HubSpotSDK::Crm::PublicMonthReference
            )
          )
        end
        attr_accessor :index_reference

        # Defines the type of time (INDEXED).
        sig do
          returns(HubSpotSDK::Crm::PublicIndexedTimePoint::TimeType::OrSymbol)
        end
        attr_accessor :time_type

        # Indicates the identifier for the time zone associated with the indexed time
        # point.
        sig { returns(String) }
        attr_accessor :zone_id

        sig { returns(T.nilable(HubSpotSDK::Crm::PublicIndexOffset)) }
        attr_reader :offset

        sig { params(offset: HubSpotSDK::Crm::PublicIndexOffset::OrHash).void }
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
                HubSpotSDK::Crm::PublicNowReference::OrHash,
                HubSpotSDK::Crm::PublicTodayReference::OrHash,
                HubSpotSDK::Crm::PublicWeekReference::OrHash,
                HubSpotSDK::Crm::PublicFiscalQuarterReference::OrHash,
                HubSpotSDK::Crm::PublicFiscalYearReference::OrHash,
                HubSpotSDK::Crm::PublicYearReference::OrHash,
                HubSpotSDK::Crm::PublicQuarterReference::OrHash,
                HubSpotSDK::Crm::PublicMonthReference::OrHash
              ),
            time_type:
              HubSpotSDK::Crm::PublicIndexedTimePoint::TimeType::OrSymbol,
            zone_id: String,
            offset: HubSpotSDK::Crm::PublicIndexOffset::OrHash,
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
                  HubSpotSDK::Crm::PublicNowReference,
                  HubSpotSDK::Crm::PublicTodayReference,
                  HubSpotSDK::Crm::PublicWeekReference,
                  HubSpotSDK::Crm::PublicFiscalQuarterReference,
                  HubSpotSDK::Crm::PublicFiscalYearReference,
                  HubSpotSDK::Crm::PublicYearReference,
                  HubSpotSDK::Crm::PublicQuarterReference,
                  HubSpotSDK::Crm::PublicMonthReference
                ),
              time_type:
                HubSpotSDK::Crm::PublicIndexedTimePoint::TimeType::OrSymbol,
              zone_id: String,
              offset: HubSpotSDK::Crm::PublicIndexOffset,
              timezone_source: String
            }
          )
        end
        def to_hash
        end

        # Specifies the reference point in time for the indexed time point.
        module IndexReference
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicNowReference,
                HubSpotSDK::Crm::PublicTodayReference,
                HubSpotSDK::Crm::PublicWeekReference,
                HubSpotSDK::Crm::PublicFiscalQuarterReference,
                HubSpotSDK::Crm::PublicFiscalYearReference,
                HubSpotSDK::Crm::PublicYearReference,
                HubSpotSDK::Crm::PublicQuarterReference,
                HubSpotSDK::Crm::PublicMonthReference
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicIndexedTimePoint::IndexReference::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Defines the type of time (INDEXED).
        module TimeType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicIndexedTimePoint::TimeType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INDEXED =
            T.let(
              :INDEXED,
              HubSpotSDK::Crm::PublicIndexedTimePoint::TimeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicIndexedTimePoint::TimeType::TaggedSymbol
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
