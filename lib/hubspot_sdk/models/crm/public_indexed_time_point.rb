# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
        # @!attribute index_reference
        #   Specifies the reference point in time for the indexed time point.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNowReference, HubspotSDK::Models::Crm::PublicTodayReference, HubspotSDK::Models::Crm::PublicWeekReference, HubspotSDK::Models::Crm::PublicFiscalQuarterReference, HubspotSDK::Models::Crm::PublicFiscalYearReference, HubspotSDK::Models::Crm::PublicYearReference, HubspotSDK::Models::Crm::PublicQuarterReference, HubspotSDK::Models::Crm::PublicMonthReference]
        required :index_reference,
                 union: -> { HubspotSDK::Crm::PublicIndexedTimePoint::IndexReference },
                 api_name: :indexReference

        # @!attribute time_type
        #   Defines the type of time (INDEXED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicIndexedTimePoint::TimeType]
        required :time_type,
                 enum: -> {
                   HubspotSDK::Crm::PublicIndexedTimePoint::TimeType
                 },
                 api_name: :timeType

        # @!attribute zone_id
        #   Indicates the identifier for the time zone associated with the indexed time
        #   point.
        #
        #   @return [String]
        required :zone_id, String, api_name: :zoneId

        # @!attribute offset
        #
        #   @return [HubspotSDK::Models::Crm::PublicIndexOffset, nil]
        optional :offset, -> { HubspotSDK::Crm::PublicIndexOffset }

        # @!attribute timezone_source
        #   Specifies the source of the time zone information for the indexed time point
        #   (CUSTOM, USER, PORTAL).
        #
        #   @return [String, nil]
        optional :timezone_source, String, api_name: :timezoneSource

        # @!method initialize(index_reference:, time_type:, zone_id:, offset: nil, timezone_source: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicIndexedTimePoint} for more details.
        #
        #   @param index_reference [HubspotSDK::Models::Crm::PublicNowReference, HubspotSDK::Models::Crm::PublicTodayReference, HubspotSDK::Models::Crm::PublicWeekReference, HubspotSDK::Models::Crm::PublicFiscalQuarterReference, HubspotSDK::Models::Crm::PublicFiscalYearReference, HubspotSDK::Models::Crm::PublicYearReference, HubspotSDK::Models::Crm::PublicQuarterReference, HubspotSDK::Models::Crm::PublicMonthReference] Specifies the reference point in time for the indexed time point.
        #
        #   @param time_type [Symbol, HubspotSDK::Models::Crm::PublicIndexedTimePoint::TimeType] Defines the type of time (INDEXED).
        #
        #   @param zone_id [String] Indicates the identifier for the time zone associated with the indexed time poin
        #
        #   @param offset [HubspotSDK::Models::Crm::PublicIndexOffset]
        #
        #   @param timezone_source [String] Specifies the source of the time zone information for the indexed time point (CU

        # Specifies the reference point in time for the indexed time point.
        #
        # @see HubspotSDK::Models::Crm::PublicIndexedTimePoint#index_reference
        module IndexReference
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicNowReference }

          variant -> { HubspotSDK::Crm::PublicTodayReference }

          variant -> { HubspotSDK::Crm::PublicWeekReference }

          variant -> { HubspotSDK::Crm::PublicFiscalQuarterReference }

          variant -> { HubspotSDK::Crm::PublicFiscalYearReference }

          variant -> { HubspotSDK::Crm::PublicYearReference }

          variant -> { HubspotSDK::Crm::PublicQuarterReference }

          variant -> { HubspotSDK::Crm::PublicMonthReference }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicNowReference, HubspotSDK::Models::Crm::PublicTodayReference, HubspotSDK::Models::Crm::PublicWeekReference, HubspotSDK::Models::Crm::PublicFiscalQuarterReference, HubspotSDK::Models::Crm::PublicFiscalYearReference, HubspotSDK::Models::Crm::PublicYearReference, HubspotSDK::Models::Crm::PublicQuarterReference, HubspotSDK::Models::Crm::PublicMonthReference)]
        end

        # Defines the type of time (INDEXED).
        #
        # @see HubspotSDK::Models::Crm::PublicIndexedTimePoint#time_type
        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          INDEXED = :INDEXED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
