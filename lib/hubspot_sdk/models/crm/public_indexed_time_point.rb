# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicIndexedTimePoint < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute index_reference
        #   Specifies the reference point in time for the indexed time point.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNowReference, HubSpotSDK::Models::Crm::PublicTodayReference, HubSpotSDK::Models::Crm::PublicWeekReference, HubSpotSDK::Models::Crm::PublicFiscalQuarterReference, HubSpotSDK::Models::Crm::PublicFiscalYearReference, HubSpotSDK::Models::Crm::PublicYearReference, HubSpotSDK::Models::Crm::PublicQuarterReference, HubSpotSDK::Models::Crm::PublicMonthReference]
        required :index_reference,
                 union: -> { HubSpotSDK::Crm::PublicIndexedTimePoint::IndexReference },
                 api_name: :indexReference

        # @!attribute time_type
        #   Defines the type of time (INDEXED).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicIndexedTimePoint::TimeType]
        required :time_type,
                 enum: -> {
                   HubSpotSDK::Crm::PublicIndexedTimePoint::TimeType
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
        #   @return [HubSpotSDK::Models::Crm::PublicIndexOffset, nil]
        optional :offset, -> { HubSpotSDK::Crm::PublicIndexOffset }

        # @!attribute timezone_source
        #   Specifies the source of the time zone information for the indexed time point
        #   (CUSTOM, USER, PORTAL).
        #
        #   @return [String, nil]
        optional :timezone_source, String, api_name: :timezoneSource

        # @!method initialize(index_reference:, time_type:, zone_id:, offset: nil, timezone_source: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicIndexedTimePoint} for more details.
        #
        #   @param index_reference [HubSpotSDK::Models::Crm::PublicNowReference, HubSpotSDK::Models::Crm::PublicTodayReference, HubSpotSDK::Models::Crm::PublicWeekReference, HubSpotSDK::Models::Crm::PublicFiscalQuarterReference, HubSpotSDK::Models::Crm::PublicFiscalYearReference, HubSpotSDK::Models::Crm::PublicYearReference, HubSpotSDK::Models::Crm::PublicQuarterReference, HubSpotSDK::Models::Crm::PublicMonthReference] Specifies the reference point in time for the indexed time point.
        #
        #   @param time_type [Symbol, HubSpotSDK::Models::Crm::PublicIndexedTimePoint::TimeType] Defines the type of time (INDEXED).
        #
        #   @param zone_id [String] Indicates the identifier for the time zone associated with the indexed time poin
        #
        #   @param offset [HubSpotSDK::Models::Crm::PublicIndexOffset]
        #
        #   @param timezone_source [String] Specifies the source of the time zone information for the indexed time point (CU

        # Specifies the reference point in time for the indexed time point.
        #
        # @see HubSpotSDK::Models::Crm::PublicIndexedTimePoint#index_reference
        module IndexReference
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicNowReference }

          variant -> { HubSpotSDK::Crm::PublicTodayReference }

          variant -> { HubSpotSDK::Crm::PublicWeekReference }

          variant -> { HubSpotSDK::Crm::PublicFiscalQuarterReference }

          variant -> { HubSpotSDK::Crm::PublicFiscalYearReference }

          variant -> { HubSpotSDK::Crm::PublicYearReference }

          variant -> { HubSpotSDK::Crm::PublicQuarterReference }

          variant -> { HubSpotSDK::Crm::PublicMonthReference }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNowReference, HubSpotSDK::Models::Crm::PublicTodayReference, HubSpotSDK::Models::Crm::PublicWeekReference, HubSpotSDK::Models::Crm::PublicFiscalQuarterReference, HubSpotSDK::Models::Crm::PublicFiscalYearReference, HubSpotSDK::Models::Crm::PublicYearReference, HubSpotSDK::Models::Crm::PublicQuarterReference, HubSpotSDK::Models::Crm::PublicMonthReference)]
        end

        # Defines the type of time (INDEXED).
        #
        # @see HubSpotSDK::Models::Crm::PublicIndexedTimePoint#time_type
        module TimeType
          extend HubSpotSDK::Internal::Type::Enum

          INDEXED = :INDEXED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
