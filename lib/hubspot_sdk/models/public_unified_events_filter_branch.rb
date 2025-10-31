# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicUnifiedEventsFilterBranch < HubspotSDK::Internal::Type::BaseModel
      # @!attribute event_type_id
      #
      #   @return [String]
      required :event_type_id, String, api_name: :eventTypeId

      # @!attribute filter_branches
      #
      #   @return [Array<HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch>]
      required :filter_branches,
               -> {
                 HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranch]
               },
               api_name: :filterBranches

      # @!attribute filter_branch_operator
      #
      #   @return [String]
      required :filter_branch_operator, String, api_name: :filterBranchOperator

      # @!attribute filter_branch_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicUnifiedEventsFilterBranch::FilterBranchType]
      required :filter_branch_type,
               enum: -> { HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranchType },
               api_name: :filterBranchType

      # @!attribute filters
      #
      #   @return [Array<HubspotSDK::Models::PublicPropertyFilter, HubspotSDK::Models::PublicAssociationInListFilter, HubspotSDK::Models::PublicPageViewAnalyticsFilter, HubspotSDK::Models::PublicCtaAnalyticsFilter, HubspotSDK::Models::PublicEventAnalyticsFilter, HubspotSDK::Models::PublicFormSubmissionFilter, HubspotSDK::Models::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::PublicIntegrationEventFilter, HubspotSDK::Models::PublicEmailSubscriptionFilter, HubspotSDK::Models::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::PublicCampaignInfluencedFilter, HubspotSDK::Models::PublicSurveyMonkeyFilter, HubspotSDK::Models::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::PublicWebinarFilter, HubspotSDK::Models::PublicEmailEventFilter, HubspotSDK::Models::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::PublicAdsSearchFilter, HubspotSDK::Models::PublicAdsTimeFilter, HubspotSDK::Models::PublicInListFilter, HubspotSDK::Models::PublicNumAssociationsFilter, HubspotSDK::Models::PublicUnifiedEventsFilter, HubspotSDK::Models::PublicPropertyAssociationInListFilter, HubspotSDK::Models::PublicConstantFilter>]
      required :filters,
               -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::PublicUnifiedEventsFilterBranch::Filter] }

      # @!attribute operator
      #
      #   @return [Symbol, HubspotSDK::Models::PublicUnifiedEventsFilterBranch::Operator]
      required :operator, enum: -> { HubspotSDK::PublicUnifiedEventsFilterBranch::Operator }

      # @!attribute coalescing_refine_by
      #
      #   @return [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation, nil]
      optional :coalescing_refine_by,
               union: -> { HubspotSDK::PublicUnifiedEventsFilterBranch::CoalescingRefineBy },
               api_name: :coalescingRefineBy

      # @!method initialize(event_type_id:, filter_branches:, filter_branch_operator:, filter_branch_type:, filters:, operator:, coalescing_refine_by: nil)
      #   @param event_type_id [String]
      #   @param filter_branches [Array<HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch>]
      #   @param filter_branch_operator [String]
      #   @param filter_branch_type [Symbol, HubspotSDK::Models::PublicUnifiedEventsFilterBranch::FilterBranchType]
      #   @param filters [Array<HubspotSDK::Models::PublicPropertyFilter, HubspotSDK::Models::PublicAssociationInListFilter, HubspotSDK::Models::PublicPageViewAnalyticsFilter, HubspotSDK::Models::PublicCtaAnalyticsFilter, HubspotSDK::Models::PublicEventAnalyticsFilter, HubspotSDK::Models::PublicFormSubmissionFilter, HubspotSDK::Models::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::PublicIntegrationEventFilter, HubspotSDK::Models::PublicEmailSubscriptionFilter, HubspotSDK::Models::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::PublicCampaignInfluencedFilter, HubspotSDK::Models::PublicSurveyMonkeyFilter, HubspotSDK::Models::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::PublicWebinarFilter, HubspotSDK::Models::PublicEmailEventFilter, HubspotSDK::Models::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::PublicAdsSearchFilter, HubspotSDK::Models::PublicAdsTimeFilter, HubspotSDK::Models::PublicInListFilter, HubspotSDK::Models::PublicNumAssociationsFilter, HubspotSDK::Models::PublicUnifiedEventsFilter, HubspotSDK::Models::PublicPropertyAssociationInListFilter, HubspotSDK::Models::PublicConstantFilter>]
      #   @param operator [Symbol, HubspotSDK::Models::PublicUnifiedEventsFilterBranch::Operator]
      #   @param coalescing_refine_by [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]

      module FilterBranch
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicOrFilterBranch }

        variant -> { HubspotSDK::PublicAndFilterBranch }

        variant -> { HubspotSDK::PublicNotAllFilterBranch }

        variant -> { HubspotSDK::PublicNotAnyFilterBranch }

        variant -> { HubspotSDK::PublicRestrictedFilterBranch }

        variant -> { HubspotSDK::PublicUnifiedEventsFilterBranch }

        variant -> { HubspotSDK::PublicPropertyAssociationFilterBranch }

        variant -> { HubspotSDK::PublicAssociationFilterBranch }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch)]
      end

      # @see HubspotSDK::Models::PublicUnifiedEventsFilterBranch#filter_branch_type
      module FilterBranchType
        extend HubspotSDK::Internal::Type::Enum

        UNIFIED_EVENTS = :UNIFIED_EVENTS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Filter
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicPropertyFilter }

        variant -> { HubspotSDK::PublicAssociationInListFilter }

        variant -> { HubspotSDK::PublicPageViewAnalyticsFilter }

        variant -> { HubspotSDK::PublicCtaAnalyticsFilter }

        variant -> { HubspotSDK::PublicEventAnalyticsFilter }

        variant -> { HubspotSDK::PublicFormSubmissionFilter }

        variant -> { HubspotSDK::PublicFormSubmissionOnPageFilter }

        variant -> { HubspotSDK::PublicIntegrationEventFilter }

        variant -> { HubspotSDK::PublicEmailSubscriptionFilter }

        variant -> { HubspotSDK::PublicCommunicationSubscriptionFilter }

        variant -> { HubspotSDK::PublicCampaignInfluencedFilter }

        variant -> { HubspotSDK::PublicSurveyMonkeyFilter }

        variant -> { HubspotSDK::PublicSurveyMonkeyValueFilter }

        variant -> { HubspotSDK::PublicWebinarFilter }

        variant -> { HubspotSDK::PublicEmailEventFilter }

        variant -> { HubspotSDK::PublicPrivacyAnalyticsFilter }

        variant -> { HubspotSDK::PublicAdsSearchFilter }

        variant -> { HubspotSDK::PublicAdsTimeFilter }

        variant -> { HubspotSDK::PublicInListFilter }

        variant -> { HubspotSDK::PublicNumAssociationsFilter }

        variant -> { HubspotSDK::PublicUnifiedEventsFilter }

        variant -> { HubspotSDK::PublicPropertyAssociationInListFilter }

        variant -> { HubspotSDK::PublicConstantFilter }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicPropertyFilter, HubspotSDK::Models::PublicAssociationInListFilter, HubspotSDK::Models::PublicPageViewAnalyticsFilter, HubspotSDK::Models::PublicCtaAnalyticsFilter, HubspotSDK::Models::PublicEventAnalyticsFilter, HubspotSDK::Models::PublicFormSubmissionFilter, HubspotSDK::Models::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::PublicIntegrationEventFilter, HubspotSDK::Models::PublicEmailSubscriptionFilter, HubspotSDK::Models::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::PublicCampaignInfluencedFilter, HubspotSDK::Models::PublicSurveyMonkeyFilter, HubspotSDK::Models::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::PublicWebinarFilter, HubspotSDK::Models::PublicEmailEventFilter, HubspotSDK::Models::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::PublicAdsSearchFilter, HubspotSDK::Models::PublicAdsTimeFilter, HubspotSDK::Models::PublicInListFilter, HubspotSDK::Models::PublicNumAssociationsFilter, HubspotSDK::Models::PublicUnifiedEventsFilter, HubspotSDK::Models::PublicPropertyAssociationInListFilter, HubspotSDK::Models::PublicConstantFilter)]
      end

      # @see HubspotSDK::Models::PublicUnifiedEventsFilterBranch#operator
      module Operator
        extend HubspotSDK::Internal::Type::Enum

        HAS_COMPLETED = :HAS_COMPLETED
        HAS_NOT_COMPLETED = :HAS_NOT_COMPLETED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicUnifiedEventsFilterBranch#coalescing_refine_by
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
    end
  end
end
