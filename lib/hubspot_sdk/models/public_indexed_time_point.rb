# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
      # @!attribute index_reference
      #
      #   @return [HubspotSDK::Models::PublicNowReference, HubspotSDK::Models::PublicTodayReference, HubspotSDK::Models::PublicWeekReference, HubspotSDK::Models::PublicFiscalQuarterReference, HubspotSDK::Models::PublicFiscalYearReference, HubspotSDK::Models::PublicYearReference, HubspotSDK::Models::PublicQuarterReference, HubspotSDK::Models::PublicMonthReference]
      required :index_reference,
               union: -> { HubspotSDK::PublicIndexedTimePoint::IndexReference },
               api_name: :indexReference

      # @!attribute time_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicIndexedTimePoint::TimeType]
      required :time_type, enum: -> { HubspotSDK::PublicIndexedTimePoint::TimeType }, api_name: :timeType

      # @!attribute zone_id
      #
      #   @return [String]
      required :zone_id, String, api_name: :zoneId

      # @!attribute offset
      #
      #   @return [HubspotSDK::Models::PublicIndexOffset, nil]
      optional :offset, -> { HubspotSDK::PublicIndexOffset }

      # @!attribute timezone_source
      #
      #   @return [String, nil]
      optional :timezone_source, String, api_name: :timezoneSource

      # @!method initialize(index_reference:, time_type:, zone_id:, offset: nil, timezone_source: nil)
      #   @param index_reference [HubspotSDK::Models::PublicNowReference, HubspotSDK::Models::PublicTodayReference, HubspotSDK::Models::PublicWeekReference, HubspotSDK::Models::PublicFiscalQuarterReference, HubspotSDK::Models::PublicFiscalYearReference, HubspotSDK::Models::PublicYearReference, HubspotSDK::Models::PublicQuarterReference, HubspotSDK::Models::PublicMonthReference]
      #   @param time_type [Symbol, HubspotSDK::Models::PublicIndexedTimePoint::TimeType]
      #   @param zone_id [String]
      #   @param offset [HubspotSDK::Models::PublicIndexOffset]
      #   @param timezone_source [String]

      # @see HubspotSDK::Models::PublicIndexedTimePoint#index_reference
      module IndexReference
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicNowReference }

        variant -> { HubspotSDK::PublicTodayReference }

        variant -> { HubspotSDK::PublicWeekReference }

        variant -> { HubspotSDK::PublicFiscalQuarterReference }

        variant -> { HubspotSDK::PublicFiscalYearReference }

        variant -> { HubspotSDK::PublicYearReference }

        variant -> { HubspotSDK::PublicQuarterReference }

        variant -> { HubspotSDK::PublicMonthReference }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicNowReference, HubspotSDK::Models::PublicTodayReference, HubspotSDK::Models::PublicWeekReference, HubspotSDK::Models::PublicFiscalQuarterReference, HubspotSDK::Models::PublicFiscalYearReference, HubspotSDK::Models::PublicYearReference, HubspotSDK::Models::PublicQuarterReference, HubspotSDK::Models::PublicMonthReference)]
      end

      # @see HubspotSDK::Models::PublicIndexedTimePoint#time_type
      module TimeType
        extend HubspotSDK::Internal::Type::Enum

        INDEXED = :INDEXED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
