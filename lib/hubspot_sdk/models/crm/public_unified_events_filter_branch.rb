# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicUnifiedEventsFilterBranch < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute event_type_id
        #   The identifier for the type of event associated with the filter branch.
        #
        #   @return [String]
        required :event_type_id, String, api_name: :eventTypeId

        # @!attribute filter_branches
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch>]
        required :filter_branches,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranch]
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
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType]
        required :filter_branch_type,
                 enum: -> { HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType },
                 api_name: :filterBranchType

        # @!attribute filters
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicPropertyFilter, HubSpotSDK::Models::Crm::PublicAssociationInListFilter, HubSpotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubSpotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubSpotSDK::Models::Crm::PublicEventAnalyticsFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubSpotSDK::Models::Crm::PublicIntegrationEventFilter, HubSpotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubSpotSDK::Models::Crm::PublicWebinarFilter, HubSpotSDK::Models::Crm::PublicEmailEventFilter, HubSpotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubSpotSDK::Models::Crm::PublicAdsSearchFilter, HubSpotSDK::Models::Crm::PublicAdsTimeFilter, HubSpotSDK::Models::Crm::PublicInListFilter, HubSpotSDK::Models::Crm::PublicNumAssociationsFilter, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter, HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubSpotSDK::Models::Crm::PublicConstantFilter>]
        required :filters,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Filter] }

        # @!attribute operator
        #   Defines the operation to be applied within the filter branch (HAS_COMPLETED,
        #   HAS_NOT_COMPLETED).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch::Operator]
        required :operator, enum: -> { HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator }

        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the filter by coalescing.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :coalescing_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute pruning_refine_by
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(event_type_id:, filter_branches:, filter_branch_operator:, filter_branch_type:, filters:, operator:, coalescing_refine_by: nil, pruning_refine_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch} for more details.
        #
        #   @param event_type_id [String] The identifier for the type of event associated with the filter branch.
        #
        #   @param filter_branches [Array<HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch>]
        #
        #   @param filter_branch_operator [String] The logical operator used to combine filters within the branch (AND).
        #
        #   @param filter_branch_type [Symbol, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType] The type of the filter branch (UNIFIED_EVENTS).
        #
        #   @param filters [Array<HubSpotSDK::Models::Crm::PublicPropertyFilter, HubSpotSDK::Models::Crm::PublicAssociationInListFilter, HubSpotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubSpotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubSpotSDK::Models::Crm::PublicEventAnalyticsFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubSpotSDK::Models::Crm::PublicIntegrationEventFilter, HubSpotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubSpotSDK::Models::Crm::PublicWebinarFilter, HubSpotSDK::Models::Crm::PublicEmailEventFilter, HubSpotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubSpotSDK::Models::Crm::PublicAdsSearchFilter, HubSpotSDK::Models::Crm::PublicAdsTimeFilter, HubSpotSDK::Models::Crm::PublicInListFilter, HubSpotSDK::Models::Crm::PublicNumAssociationsFilter, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter, HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubSpotSDK::Models::Crm::PublicConstantFilter>]
        #
        #   @param operator [Symbol, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch::Operator] Defines the operation to be applied within the filter branch (HAS_COMPLETED, HAS
        #
        #   @param coalescing_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by coalescing.
        #
        #   @param pruning_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation]

        module FilterBranch
          extend HubSpotSDK::Internal::Type::Union

          discriminator :filterBranchType

          variant :OR, -> { HubSpotSDK::Crm::PublicOrFilterBranch }

          variant :AND, -> { HubSpotSDK::Crm::PublicAndFilterBranch }

          variant :NOT_ALL, -> { HubSpotSDK::Crm::PublicNotAllFilterBranch }

          variant :NOT_ANY, -> { HubSpotSDK::Crm::PublicNotAnyFilterBranch }

          variant :RESTRICTED, -> { HubSpotSDK::Crm::PublicRestrictedFilterBranch }

          variant :UNIFIED_EVENTS, -> { HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch }

          variant :PROPERTY_ASSOCIATION, -> { HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch }

          variant :ASSOCIATION, -> { HubSpotSDK::Crm::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch)]
        end

        # The type of the filter branch (UNIFIED_EVENTS).
        #
        # @see HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch#filter_branch_type
        module FilterBranchType
          extend HubSpotSDK::Internal::Type::Enum

          UNIFIED_EVENTS = :UNIFIED_EVENTS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Filter
          extend HubSpotSDK::Internal::Type::Union

          discriminator :filterType

          variant :PROPERTY, -> { HubSpotSDK::Crm::PublicPropertyFilter }

          variant :ASSOCIATION, -> { HubSpotSDK::Crm::PublicAssociationInListFilter }

          variant :PAGE_VIEW, -> { HubSpotSDK::Crm::PublicPageViewAnalyticsFilter }

          variant :CTA, -> { HubSpotSDK::Crm::PublicCtaAnalyticsFilter }

          variant :EVENT, -> { HubSpotSDK::Crm::PublicEventAnalyticsFilter }

          variant :FORM_SUBMISSION, -> { HubSpotSDK::Crm::PublicFormSubmissionFilter }

          variant :FORM_SUBMISSION_ON_PAGE, -> { HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter }

          variant :INTEGRATION_EVENT, -> { HubSpotSDK::Crm::PublicIntegrationEventFilter }

          variant :EMAIL_SUBSCRIPTION, -> { HubSpotSDK::Crm::PublicEmailSubscriptionFilter }

          variant :COMMUNICATION_SUBSCRIPTION, -> { HubSpotSDK::Crm::PublicCommunicationSubscriptionFilter }

          variant :CAMPAIGN_INFLUENCED, -> { HubSpotSDK::Crm::PublicCampaignInfluencedFilter }

          variant :SURVEY_MONKEY, -> { HubSpotSDK::Crm::PublicSurveyMonkeyFilter }

          variant :SURVEY_MONKEY_VALUE, -> { HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter }

          variant :WEBINAR, -> { HubSpotSDK::Crm::PublicWebinarFilter }

          variant :EMAIL_EVENT, -> { HubSpotSDK::Crm::PublicEmailEventFilter }

          variant :PRIVACY, -> { HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter }

          variant :ADS_SEARCH, -> { HubSpotSDK::Crm::PublicAdsSearchFilter }

          variant :ADS_TIME, -> { HubSpotSDK::Crm::PublicAdsTimeFilter }

          variant :IN_LIST, -> { HubSpotSDK::Crm::PublicInListFilter }

          variant :NUM_ASSOCIATIONS, -> { HubSpotSDK::Crm::PublicNumAssociationsFilter }

          variant :UNIFIED_EVENTS, -> { HubSpotSDK::Crm::PublicUnifiedEventsFilter }

          variant :PROPERTY_ASSOCIATION, -> { HubSpotSDK::Crm::PublicPropertyAssociationInListFilter }

          variant :CONSTANT, -> { HubSpotSDK::Crm::PublicConstantFilter }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicPropertyFilter, HubSpotSDK::Models::Crm::PublicAssociationInListFilter, HubSpotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubSpotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubSpotSDK::Models::Crm::PublicEventAnalyticsFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubSpotSDK::Models::Crm::PublicIntegrationEventFilter, HubSpotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubSpotSDK::Models::Crm::PublicWebinarFilter, HubSpotSDK::Models::Crm::PublicEmailEventFilter, HubSpotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubSpotSDK::Models::Crm::PublicAdsSearchFilter, HubSpotSDK::Models::Crm::PublicAdsTimeFilter, HubSpotSDK::Models::Crm::PublicInListFilter, HubSpotSDK::Models::Crm::PublicNumAssociationsFilter, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter, HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubSpotSDK::Models::Crm::PublicConstantFilter)]
        end

        # Defines the operation to be applied within the filter branch (HAS_COMPLETED,
        # HAS_NOT_COMPLETED).
        #
        # @see HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          HAS_COMPLETED = :HAS_COMPLETED
          HAS_NOT_COMPLETED = :HAS_NOT_COMPLETED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the criteria for refining the filter by coalescing.
        #
        # @see HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch#coalescing_refine_by
        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end

        # @see HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch#pruning_refine_by
        module PruningRefineBy
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
