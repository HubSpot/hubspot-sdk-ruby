# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicUnifiedEventsFilterBranch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_type_id
        #   The identifier for the type of event associated with the filter branch.
        #
        #   @return [String]
        required :event_type_id, String, api_name: :eventTypeId

        # @!attribute filter_branches
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch>]
        required :filter_branches,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranch]
                 },
                 api_name: :filterBranches

        # @!attribute filter_branch_operator
        #   The logical operator used to combine filters within the branch (AND).
        #
        #   @return [String]
        required :filter_branch_operator, String, api_name: :filterBranchOperator

        # @!attribute filter_branch_type
        #   The type of the filter branch (UNIFIED_EVENTS).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType]
        required :filter_branch_type,
                 enum: -> { HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType },
                 api_name: :filterBranchType

        # @!attribute filters
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicPropertyFilter, HubspotSDK::Models::Crm::PublicAssociationInListFilter, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubspotSDK::Models::Crm::PublicEventAnalyticsFilter, HubspotSDK::Models::Crm::PublicFormSubmissionFilter, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::Crm::PublicIntegrationEventFilter, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::Crm::PublicWebinarFilter, HubspotSDK::Models::Crm::PublicEmailEventFilter, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::Crm::PublicAdsSearchFilter, HubspotSDK::Models::Crm::PublicAdsTimeFilter, HubspotSDK::Models::Crm::PublicInListFilter, HubspotSDK::Models::Crm::PublicNumAssociationsFilter, HubspotSDK::Models::Crm::PublicUnifiedEventsFilter, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubspotSDK::Models::Crm::PublicConstantFilter>]
        required :filters,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Filter] }

        # @!attribute operator
        #   Defines the operation to be applied within the filter branch (HAS_COMPLETED,
        #   HAS_NOT_COMPLETED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch::Operator]
        required :operator, enum: -> { HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator }

        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the filter by coalescing.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :coalescing_refine_by,
                 union: -> { HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute pruning_refine_by
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(event_type_id:, filter_branches:, filter_branch_operator:, filter_branch_type:, filters:, operator:, coalescing_refine_by: nil, pruning_refine_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch} for more details.
        #
        #   @param event_type_id [String] The identifier for the type of event associated with the filter branch.
        #
        #   @param filter_branches [Array<HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch>]
        #
        #   @param filter_branch_operator [String] The logical operator used to combine filters within the branch (AND).
        #
        #   @param filter_branch_type [Symbol, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType] The type of the filter branch (UNIFIED_EVENTS).
        #
        #   @param filters [Array<HubspotSDK::Models::Crm::PublicPropertyFilter, HubspotSDK::Models::Crm::PublicAssociationInListFilter, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubspotSDK::Models::Crm::PublicEventAnalyticsFilter, HubspotSDK::Models::Crm::PublicFormSubmissionFilter, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::Crm::PublicIntegrationEventFilter, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::Crm::PublicWebinarFilter, HubspotSDK::Models::Crm::PublicEmailEventFilter, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::Crm::PublicAdsSearchFilter, HubspotSDK::Models::Crm::PublicAdsTimeFilter, HubspotSDK::Models::Crm::PublicInListFilter, HubspotSDK::Models::Crm::PublicNumAssociationsFilter, HubspotSDK::Models::Crm::PublicUnifiedEventsFilter, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubspotSDK::Models::Crm::PublicConstantFilter>]
        #
        #   @param operator [Symbol, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch::Operator] Defines the operation to be applied within the filter branch (HAS_COMPLETED, HAS
        #
        #   @param coalescing_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by coalescing.
        #
        #   @param pruning_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation]

        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          discriminator :filterBranchType

          variant :OR, -> { HubspotSDK::Crm::PublicOrFilterBranch }

          variant :AND, -> { HubspotSDK::Crm::PublicAndFilterBranch }

          variant :NOT_ALL, -> { HubspotSDK::Crm::PublicNotAllFilterBranch }

          variant :NOT_ANY, -> { HubspotSDK::Crm::PublicNotAnyFilterBranch }

          variant :RESTRICTED, -> { HubspotSDK::Crm::PublicRestrictedFilterBranch }

          variant :UNIFIED_EVENTS, -> { HubspotSDK::Crm::PublicUnifiedEventsFilterBranch }

          variant :PROPERTY_ASSOCIATION, -> { HubspotSDK::Crm::PublicPropertyAssociationFilterBranch }

          variant :ASSOCIATION, -> { HubspotSDK::Crm::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch)]
        end

        # The type of the filter branch (UNIFIED_EVENTS).
        #
        # @see HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch#filter_branch_type
        module FilterBranchType
          extend HubspotSDK::Internal::Type::Enum

          UNIFIED_EVENTS = :UNIFIED_EVENTS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Filter
          extend HubspotSDK::Internal::Type::Union

          discriminator :filterType

          variant :PROPERTY, -> { HubspotSDK::Crm::PublicPropertyFilter }

          variant :ASSOCIATION, -> { HubspotSDK::Crm::PublicAssociationInListFilter }

          variant :PAGE_VIEW, -> { HubspotSDK::Crm::PublicPageViewAnalyticsFilter }

          variant :CTA, -> { HubspotSDK::Crm::PublicCtaAnalyticsFilter }

          variant :EVENT, -> { HubspotSDK::Crm::PublicEventAnalyticsFilter }

          variant :FORM_SUBMISSION, -> { HubspotSDK::Crm::PublicFormSubmissionFilter }

          variant :FORM_SUBMISSION_ON_PAGE, -> { HubspotSDK::Crm::PublicFormSubmissionOnPageFilter }

          variant :INTEGRATION_EVENT, -> { HubspotSDK::Crm::PublicIntegrationEventFilter }

          variant :EMAIL_SUBSCRIPTION, -> { HubspotSDK::Crm::PublicEmailSubscriptionFilter }

          variant :COMMUNICATION_SUBSCRIPTION, -> { HubspotSDK::Crm::PublicCommunicationSubscriptionFilter }

          variant :CAMPAIGN_INFLUENCED, -> { HubspotSDK::Crm::PublicCampaignInfluencedFilter }

          variant :SURVEY_MONKEY, -> { HubspotSDK::Crm::PublicSurveyMonkeyFilter }

          variant :SURVEY_MONKEY_VALUE, -> { HubspotSDK::Crm::PublicSurveyMonkeyValueFilter }

          variant :WEBINAR, -> { HubspotSDK::Crm::PublicWebinarFilter }

          variant :EMAIL_EVENT, -> { HubspotSDK::Crm::PublicEmailEventFilter }

          variant :PRIVACY, -> { HubspotSDK::Crm::PublicPrivacyAnalyticsFilter }

          variant :ADS_SEARCH, -> { HubspotSDK::Crm::PublicAdsSearchFilter }

          variant :ADS_TIME, -> { HubspotSDK::Crm::PublicAdsTimeFilter }

          variant :IN_LIST, -> { HubspotSDK::Crm::PublicInListFilter }

          variant :NUM_ASSOCIATIONS, -> { HubspotSDK::Crm::PublicNumAssociationsFilter }

          variant :UNIFIED_EVENTS, -> { HubspotSDK::Crm::PublicUnifiedEventsFilter }

          variant :PROPERTY_ASSOCIATION, -> { HubspotSDK::Crm::PublicPropertyAssociationInListFilter }

          variant :CONSTANT, -> { HubspotSDK::Crm::PublicConstantFilter }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicPropertyFilter, HubspotSDK::Models::Crm::PublicAssociationInListFilter, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubspotSDK::Models::Crm::PublicEventAnalyticsFilter, HubspotSDK::Models::Crm::PublicFormSubmissionFilter, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::Crm::PublicIntegrationEventFilter, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::Crm::PublicWebinarFilter, HubspotSDK::Models::Crm::PublicEmailEventFilter, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::Crm::PublicAdsSearchFilter, HubspotSDK::Models::Crm::PublicAdsTimeFilter, HubspotSDK::Models::Crm::PublicInListFilter, HubspotSDK::Models::Crm::PublicNumAssociationsFilter, HubspotSDK::Models::Crm::PublicUnifiedEventsFilter, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubspotSDK::Models::Crm::PublicConstantFilter)]
        end

        # Defines the operation to be applied within the filter branch (HAS_COMPLETED,
        # HAS_NOT_COMPLETED).
        #
        # @see HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          HAS_COMPLETED = :HAS_COMPLETED
          HAS_NOT_COMPLETED = :HAS_NOT_COMPLETED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the criteria for refining the filter by coalescing.
        #
        # @see HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch#coalescing_refine_by
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

        # @see HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch#pruning_refine_by
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
