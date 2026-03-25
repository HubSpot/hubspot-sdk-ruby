# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicCtaAnalyticsFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute cta_name
        #   The name of the Call-to-Action (CTA) to be used in the filter.
        #
        #   @return [String]
        required :cta_name, String, api_name: :ctaName

        # @!attribute filter_type
        #   Indicates the type of filter being applied, which is (CTA).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicCtaAnalyticsFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Defines the operation to be applied within the filter (HAS_CLICKED_CTA,
        #   HAS_NOT_CLICKED_CTA, HAS_OPENED_CTA, HAS_NOT_OPENED_CTA,
        #   HAS_CLICKED_CTA_PLACEMENT, HAS_NOT_CLICKED_CTA_PLACEMENT,
        #   HAS_OPENED_CTA_PLACEMENT, HAS_NOT_OPENED_CTA_PLACEMENT).
        #
        #   @return [String]
        required :operator, String

        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the filter by coalescing.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :coalescing_refine_by,
                 union: -> { HubspotSDK::Crm::PublicCtaAnalyticsFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute pruning_refine_by
        #   Specifies the criteria for refining the filter by pruning.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubspotSDK::Crm::PublicCtaAnalyticsFilter::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(cta_name:, filter_type:, operator:, coalescing_refine_by: nil, pruning_refine_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter} for more details.
        #
        #   @param cta_name [String] The name of the Call-to-Action (CTA) to be used in the filter.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter::FilterType] Indicates the type of filter being applied, which is (CTA).
        #
        #   @param operator [String] Defines the operation to be applied within the filter (HAS*CLICKED_CTA, HAS_NOT*
        #
        #   @param coalescing_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by coalescing.
        #
        #   @param pruning_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by pruning.

        # Indicates the type of filter being applied, which is (CTA).
        #
        # @see HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          CTA = :CTA

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the criteria for refining the filter by coalescing.
        #
        # @see HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter#coalescing_refine_by
        module CoalescingRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end

        # Specifies the criteria for refining the filter by pruning.
        #
        # @see HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter#pruning_refine_by
        module PruningRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
