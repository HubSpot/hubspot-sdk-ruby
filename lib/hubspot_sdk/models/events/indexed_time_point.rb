# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class IndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
        # @!attribute index_reference
        #
        #   @return [HubspotSDK::Models::Events::NowReference, HubspotSDK::Models::Events::TodayReference, HubspotSDK::Models::Events::WeekReference, HubspotSDK::Models::Events::MonthReference, HubspotSDK::Models::Events::QuarterReference, HubspotSDK::Models::Events::FiscalQuarter, HubspotSDK::Models::Events::YearReference, HubspotSDK::Models::Events::FiscalYear]
        required :index_reference,
                 union: -> { HubspotSDK::Events::IndexedTimePoint::IndexReference },
                 api_name: :indexReference

        # @!attribute time_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::IndexedTimePoint::TimeType]
        required :time_type, enum: -> { HubspotSDK::Events::IndexedTimePoint::TimeType }, api_name: :timeType

        # @!attribute timezone_source
        #
        #   @return [Symbol, HubspotSDK::Models::Events::IndexedTimePoint::TimezoneSource]
        required :timezone_source,
                 enum: -> { HubspotSDK::Events::IndexedTimePoint::TimezoneSource },
                 api_name: :timezoneSource

        # @!attribute zone_id
        #
        #   @return [String]
        required :zone_id, String, api_name: :zoneId

        # @!attribute offset
        #
        #   @return [HubspotSDK::Models::Events::IndexOffset, nil]
        optional :offset, -> { HubspotSDK::Events::IndexOffset }

        # @!attribute should_generate_refresh_time
        #
        #   @return [Boolean, nil]
        optional :should_generate_refresh_time,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :shouldGenerateRefreshTime

        # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil, should_generate_refresh_time: nil)
        #   @param index_reference [HubspotSDK::Models::Events::NowReference, HubspotSDK::Models::Events::TodayReference, HubspotSDK::Models::Events::WeekReference, HubspotSDK::Models::Events::MonthReference, HubspotSDK::Models::Events::QuarterReference, HubspotSDK::Models::Events::FiscalQuarter, HubspotSDK::Models::Events::YearReference, HubspotSDK::Models::Events::FiscalYear]
        #   @param time_type [Symbol, HubspotSDK::Models::Events::IndexedTimePoint::TimeType]
        #   @param timezone_source [Symbol, HubspotSDK::Models::Events::IndexedTimePoint::TimezoneSource]
        #   @param zone_id [String]
        #   @param offset [HubspotSDK::Models::Events::IndexOffset]
        #   @param should_generate_refresh_time [Boolean]

        # @see HubspotSDK::Models::Events::IndexedTimePoint#index_reference
        module IndexReference
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Events::NowReference }

          variant -> { HubspotSDK::Events::TodayReference }

          variant -> { HubspotSDK::Events::WeekReference }

          variant -> { HubspotSDK::Events::MonthReference }

          variant -> { HubspotSDK::Events::QuarterReference }

          variant -> { HubspotSDK::Events::FiscalQuarter }

          variant -> { HubspotSDK::Events::YearReference }

          variant -> { HubspotSDK::Events::FiscalYear }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Events::NowReference, HubspotSDK::Models::Events::TodayReference, HubspotSDK::Models::Events::WeekReference, HubspotSDK::Models::Events::MonthReference, HubspotSDK::Models::Events::QuarterReference, HubspotSDK::Models::Events::FiscalQuarter, HubspotSDK::Models::Events::YearReference, HubspotSDK::Models::Events::FiscalYear)]
        end

        # @see HubspotSDK::Models::Events::IndexedTimePoint#time_type
        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          INDEXED = :INDEXED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::IndexedTimePoint#timezone_source
        module TimezoneSource
          extend HubspotSDK::Internal::Type::Enum

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
