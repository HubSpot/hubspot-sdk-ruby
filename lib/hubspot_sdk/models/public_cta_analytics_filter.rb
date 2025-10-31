# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicCtaAnalyticsFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute cta_name
      #
      #   @return [String]
      required :cta_name, String, api_name: :ctaName

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicCtaAnalyticsFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicCtaAnalyticsFilter::FilterType },
               api_name: :filterType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute coalescing_refine_by
      #
      #   @return [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation, nil]
      optional :coalescing_refine_by,
               union: -> { HubspotSDK::PublicCtaAnalyticsFilter::CoalescingRefineBy },
               api_name: :coalescingRefineBy

      # @!attribute pruning_refine_by
      #
      #   @return [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation, nil]
      optional :pruning_refine_by,
               union: -> { HubspotSDK::PublicCtaAnalyticsFilter::PruningRefineBy },
               api_name: :pruningRefineBy

      # @!method initialize(cta_name:, filter_type:, operator:, coalescing_refine_by: nil, pruning_refine_by: nil)
      #   @param cta_name [String]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicCtaAnalyticsFilter::FilterType]
      #   @param operator [String]
      #   @param coalescing_refine_by [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      #   @param pruning_refine_by [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]

      # @see HubspotSDK::Models::PublicCtaAnalyticsFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        CTA = :CTA

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicCtaAnalyticsFilter#coalescing_refine_by
      module CoalescingRefineBy
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicNumOccurrencesRefineBy }

        variant -> { HubspotSDK::PublicSetOccurrencesRefineBy }

        variant -> { HubspotSDK::PublicRelativeComparativeTimestampRefineBy }

        variant -> { HubspotSDK::PublicRelativeRangedTimestampRefineBy }

        variant -> { HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy }

        variant -> { HubspotSDK::PublicAbsoluteRangedTimestampRefineBy }

        variant -> { HubspotSDK::PublicAllHistoryRefineBy }

        variant -> { HubspotSDK::PublicTimePointOperation }

        variant -> { HubspotSDK::PublicRangedTimeOperation }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation)]
      end

      # @see HubspotSDK::Models::PublicCtaAnalyticsFilter#pruning_refine_by
      module PruningRefineBy
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicNumOccurrencesRefineBy }

        variant -> { HubspotSDK::PublicSetOccurrencesRefineBy }

        variant -> { HubspotSDK::PublicRelativeComparativeTimestampRefineBy }

        variant -> { HubspotSDK::PublicRelativeRangedTimestampRefineBy }

        variant -> { HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy }

        variant -> { HubspotSDK::PublicAbsoluteRangedTimestampRefineBy }

        variant -> { HubspotSDK::PublicAllHistoryRefineBy }

        variant -> { HubspotSDK::PublicTimePointOperation }

        variant -> { HubspotSDK::PublicRangedTimeOperation }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation)]
      end
    end
  end
end
