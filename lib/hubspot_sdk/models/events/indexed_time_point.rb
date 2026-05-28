# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class IndexedTimePoint < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute index_reference
        #
        #   @return [HubSpotSDK::Models::Events::NowReference, HubSpotSDK::Models::Events::TodayReference, HubSpotSDK::Models::Events::WeekReference, HubSpotSDK::Models::Events::MonthReference, HubSpotSDK::Models::Events::QuarterReference, HubSpotSDK::Models::Events::FiscalQuarter, HubSpotSDK::Models::Events::YearReference, HubSpotSDK::Models::Events::FiscalYear]
        required :index_reference,
                 union: -> { HubSpotSDK::Events::IndexedTimePoint::IndexReference },
                 api_name: :indexReference

        # @!attribute time_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::IndexedTimePoint::TimeType]
        required :time_type, enum: -> { HubSpotSDK::Events::IndexedTimePoint::TimeType }, api_name: :timeType

        # @!attribute timezone_source
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::IndexedTimePoint::TimezoneSource]
        required :timezone_source,
                 enum: -> { HubSpotSDK::Events::IndexedTimePoint::TimezoneSource },
                 api_name: :timezoneSource

        # @!attribute zone_id
        #
        #   @return [String]
        required :zone_id, String, api_name: :zoneId

        # @!attribute offset
        #
        #   @return [HubSpotSDK::Models::Events::IndexOffset, nil]
        optional :offset, -> { HubSpotSDK::Events::IndexOffset }

        # @!attribute should_generate_refresh_time
        #
        #   @return [Boolean, nil]
        optional :should_generate_refresh_time,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :shouldGenerateRefreshTime

        # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil, should_generate_refresh_time: nil)
        #   @param index_reference [HubSpotSDK::Models::Events::NowReference, HubSpotSDK::Models::Events::TodayReference, HubSpotSDK::Models::Events::WeekReference, HubSpotSDK::Models::Events::MonthReference, HubSpotSDK::Models::Events::QuarterReference, HubSpotSDK::Models::Events::FiscalQuarter, HubSpotSDK::Models::Events::YearReference, HubSpotSDK::Models::Events::FiscalYear]
        #   @param time_type [Symbol, HubSpotSDK::Models::Events::IndexedTimePoint::TimeType]
        #   @param timezone_source [Symbol, HubSpotSDK::Models::Events::IndexedTimePoint::TimezoneSource]
        #   @param zone_id [String]
        #   @param offset [HubSpotSDK::Models::Events::IndexOffset]
        #   @param should_generate_refresh_time [Boolean]

        # @see HubSpotSDK::Models::Events::IndexedTimePoint#index_reference
        module IndexReference
          extend HubSpotSDK::Internal::Type::Union

          discriminator :referenceType

          variant :NOW, -> { HubSpotSDK::Events::NowReference }

          variant :TODAY, -> { HubSpotSDK::Events::TodayReference }

          variant :WEEK, -> { HubSpotSDK::Events::WeekReference }

          variant :MONTH, -> { HubSpotSDK::Events::MonthReference }

          variant :QUARTER, -> { HubSpotSDK::Events::QuarterReference }

          variant :FISCAL_QUARTER, -> { HubSpotSDK::Events::FiscalQuarter }

          variant :YEAR, -> { HubSpotSDK::Events::YearReference }

          variant :FISCAL_YEAR, -> { HubSpotSDK::Events::FiscalYear }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Events::NowReference, HubSpotSDK::Models::Events::TodayReference, HubSpotSDK::Models::Events::WeekReference, HubSpotSDK::Models::Events::MonthReference, HubSpotSDK::Models::Events::QuarterReference, HubSpotSDK::Models::Events::FiscalQuarter, HubSpotSDK::Models::Events::YearReference, HubSpotSDK::Models::Events::FiscalYear)]
        end

        # @see HubSpotSDK::Models::Events::IndexedTimePoint#time_type
        module TimeType
          extend HubSpotSDK::Internal::Type::Enum

          INDEXED = :INDEXED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::IndexedTimePoint#timezone_source
        module TimezoneSource
          extend HubSpotSDK::Internal::Type::Enum

          CUSTOM = :CUSTOM
          PORTAL = :PORTAL
          USER = :USER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
