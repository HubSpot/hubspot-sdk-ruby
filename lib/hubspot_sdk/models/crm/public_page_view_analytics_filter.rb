# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPageViewAnalyticsFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates the type of filter being applied (PAGE_VIEW).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicPageViewAnalyticsFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Defines the operation to be applied within the filter (HAS_PAGEVIEW_EQ,
        #   HAS_PAGEVIEW_CONTAINS, HAS_PAGEVIEW_MATCHES_REGEX, NOT_HAS_PAGEVIEW_EQ,
        #   NOT_HAS_PAGEVIEW_CONTAINS).
        #
        #   @return [String]
        required :operator, String

        # @!attribute page_url
        #   The URL of the page to be used in the filter.
        #
        #   @return [String]
        required :page_url, String, api_name: :pageUrl

        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the filter by coalescing.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :coalescing_refine_by,
                 union: -> { HubspotSDK::Crm::PublicPageViewAnalyticsFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute enable_tracking
        #   Indicates whether tracking is enabled for the page view.
        #
        #   @return [Boolean, nil]
        optional :enable_tracking, HubspotSDK::Internal::Type::Boolean, api_name: :enableTracking

        # @!attribute pruning_refine_by
        #   Specifies the criteria for refining the filter by pruning.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubspotSDK::Crm::PublicPageViewAnalyticsFilter::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(filter_type:, operator:, page_url:, coalescing_refine_by: nil, enable_tracking: nil, pruning_refine_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter} for more details.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter::FilterType] Indicates the type of filter being applied (PAGE_VIEW).
        #
        #   @param operator [String] Defines the operation to be applied within the filter (HAS_PAGEVIEW_EQ, HAS_PAGE
        #
        #   @param page_url [String] The URL of the page to be used in the filter.
        #
        #   @param coalescing_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by coalescing.
        #
        #   @param enable_tracking [Boolean] Indicates whether tracking is enabled for the page view.
        #
        #   @param pruning_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by pruning.

        # Indicates the type of filter being applied (PAGE_VIEW).
        #
        # @see HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          PAGE_VIEW = :PAGE_VIEW

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the criteria for refining the filter by coalescing.
        #
        # @see HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter#coalescing_refine_by
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
        # @see HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter#pruning_refine_by
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
