# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicUnifiedEventsFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_lines
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicEventFilterMetadata>]
        required :filter_lines,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicEventFilterMetadata] },
                 api_name: :filterLines

        # @!attribute filter_type
        #   Indicates the type of filter being applied (UNIFIED_EVENTS).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicUnifiedEventsFilter::FilterType },
                 api_name: :filterType

        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the filter by coalescing.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, nil]
        optional :coalescing_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicUnifiedEventsFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute event_type_id
        #   The identifier for the type of event in the unified events filter.
        #
        #   @return [String, nil]
        optional :event_type_id, String, api_name: :eventTypeId

        # @!attribute pruning_refine_by
        #   Specifies the criteria for refining the filter by pruning.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicUnifiedEventsFilter::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(filter_lines:, filter_type:, coalescing_refine_by: nil, event_type_id: nil, pruning_refine_by: nil)
        #   @param filter_lines [Array<HubSpotSDK::Models::Crm::PublicEventFilterMetadata>]
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter::FilterType] Indicates the type of filter being applied (UNIFIED_EVENTS).
        #
        #   @param coalescing_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation] Specifies the criteria for refining the filter by coalescing.
        #
        #   @param event_type_id [String] The identifier for the type of event in the unified events filter.
        #
        #   @param pruning_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation] Specifies the criteria for refining the filter by pruning.

        # Indicates the type of filter being applied (UNIFIED_EVENTS).
        #
        # @see HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          UNIFIED_EVENTS = :UNIFIED_EVENTS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the criteria for refining the filter by coalescing.
        #
        # @see HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter#coalescing_refine_by
        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          discriminator :type

          variant :NUM_OCCURRENCES, -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant :SET_OCCURRENCES, -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant :RELATIVE_COMPARATIVE, -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant :RELATIVE_RANGED, -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant :ABSOLUTE_COMPARATIVE, -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant :ABSOLUTE_RANGED, -> { HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant :ALL_HISTORY, -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy }

          variant :TIME_RANGED, -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation)]
        end

        # Specifies the criteria for refining the filter by pruning.
        #
        # @see HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter#pruning_refine_by
        module PruningRefineBy
          extend HubSpotSDK::Internal::Type::Union

          discriminator :type

          variant :NUM_OCCURRENCES, -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant :SET_OCCURRENCES, -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant :RELATIVE_COMPARATIVE, -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant :RELATIVE_RANGED, -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant :ABSOLUTE_COMPARATIVE, -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant :ABSOLUTE_RANGED, -> { HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant :ALL_HISTORY, -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy }

          variant :TIME_RANGED, -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation)]
        end
      end
    end
  end
end
