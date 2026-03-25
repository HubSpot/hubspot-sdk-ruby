# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicNotAllFilterBranch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_branches
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch>]
        required :filter_branches,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranch]
                 },
                 api_name: :filterBranches

        # @!attribute filter_branch_operator
        #   The operator used to combine filters within the branch (NOT_ALL).
        #
        #   @return [String]
        required :filter_branch_operator, String, api_name: :filterBranchOperator

        # @!attribute filter_branch_type
        #   The type of the filter branch (NOT_ALL).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicNotAllFilterBranch::FilterBranchType]
        required :filter_branch_type,
                 enum: -> { HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranchType },
                 api_name: :filterBranchType

        # @!attribute filters
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicPropertyFilter, HubspotSDK::Models::Crm::PublicAssociationInListFilter, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubspotSDK::Models::Crm::PublicEventAnalyticsFilter, HubspotSDK::Models::Crm::PublicFormSubmissionFilter, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::Crm::PublicIntegrationEventFilter, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::Crm::PublicWebinarFilter, HubspotSDK::Models::Crm::PublicEmailEventFilter, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::Crm::PublicAdsSearchFilter, HubspotSDK::Models::Crm::PublicAdsTimeFilter, HubspotSDK::Models::Crm::PublicInListFilter, HubspotSDK::Models::Crm::PublicNumAssociationsFilter, HubspotSDK::Models::Crm::PublicUnifiedEventsFilter, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubspotSDK::Models::Crm::PublicConstantFilter>]
        required :filters,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::PublicNotAllFilterBranch::Filter] }

        # @!method initialize(filter_branches:, filter_branch_operator:, filter_branch_type:, filters:)
        #   @param filter_branches [Array<HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch>]
        #
        #   @param filter_branch_operator [String] The operator used to combine filters within the branch (NOT_ALL).
        #
        #   @param filter_branch_type [Symbol, HubspotSDK::Models::Crm::PublicNotAllFilterBranch::FilterBranchType] The type of the filter branch (NOT_ALL).
        #
        #   @param filters [Array<HubspotSDK::Models::Crm::PublicPropertyFilter, HubspotSDK::Models::Crm::PublicAssociationInListFilter, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubspotSDK::Models::Crm::PublicEventAnalyticsFilter, HubspotSDK::Models::Crm::PublicFormSubmissionFilter, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::Crm::PublicIntegrationEventFilter, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::Crm::PublicWebinarFilter, HubspotSDK::Models::Crm::PublicEmailEventFilter, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::Crm::PublicAdsSearchFilter, HubspotSDK::Models::Crm::PublicAdsTimeFilter, HubspotSDK::Models::Crm::PublicInListFilter, HubspotSDK::Models::Crm::PublicNumAssociationsFilter, HubspotSDK::Models::Crm::PublicUnifiedEventsFilter, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubspotSDK::Models::Crm::PublicConstantFilter>]

        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicOrFilterBranch }

          variant -> { HubspotSDK::Crm::PublicAndFilterBranch }

          variant -> { HubspotSDK::Crm::PublicNotAllFilterBranch }

          variant -> { HubspotSDK::Crm::PublicNotAnyFilterBranch }

          variant -> { HubspotSDK::Crm::PublicRestrictedFilterBranch }

          variant -> { HubspotSDK::Crm::PublicUnifiedEventsFilterBranch }

          variant -> { HubspotSDK::Crm::PublicPropertyAssociationFilterBranch }

          variant -> { HubspotSDK::Crm::PublicAssociationFilterBranch }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch)]
        end

        # The type of the filter branch (NOT_ALL).
        #
        # @see HubspotSDK::Models::Crm::PublicNotAllFilterBranch#filter_branch_type
        module FilterBranchType
          extend HubspotSDK::Internal::Type::Enum

          NOT_ALL = :NOT_ALL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Filter
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicPropertyFilter }

          variant -> { HubspotSDK::Crm::PublicAssociationInListFilter }

          variant -> { HubspotSDK::Crm::PublicPageViewAnalyticsFilter }

          variant -> { HubspotSDK::Crm::PublicCtaAnalyticsFilter }

          variant -> { HubspotSDK::Crm::PublicEventAnalyticsFilter }

          variant -> { HubspotSDK::Crm::PublicFormSubmissionFilter }

          variant -> { HubspotSDK::Crm::PublicFormSubmissionOnPageFilter }

          variant -> { HubspotSDK::Crm::PublicIntegrationEventFilter }

          variant -> { HubspotSDK::Crm::PublicEmailSubscriptionFilter }

          variant -> { HubspotSDK::Crm::PublicCommunicationSubscriptionFilter }

          variant -> { HubspotSDK::Crm::PublicCampaignInfluencedFilter }

          variant -> { HubspotSDK::Crm::PublicSurveyMonkeyFilter }

          variant -> { HubspotSDK::Crm::PublicSurveyMonkeyValueFilter }

          variant -> { HubspotSDK::Crm::PublicWebinarFilter }

          variant -> { HubspotSDK::Crm::PublicEmailEventFilter }

          variant -> { HubspotSDK::Crm::PublicPrivacyAnalyticsFilter }

          variant -> { HubspotSDK::Crm::PublicAdsSearchFilter }

          variant -> { HubspotSDK::Crm::PublicAdsTimeFilter }

          variant -> { HubspotSDK::Crm::PublicInListFilter }

          variant -> { HubspotSDK::Crm::PublicNumAssociationsFilter }

          variant -> { HubspotSDK::Crm::PublicUnifiedEventsFilter }

          variant -> { HubspotSDK::Crm::PublicPropertyAssociationInListFilter }

          variant -> { HubspotSDK::Crm::PublicConstantFilter }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicPropertyFilter, HubspotSDK::Models::Crm::PublicAssociationInListFilter, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubspotSDK::Models::Crm::PublicEventAnalyticsFilter, HubspotSDK::Models::Crm::PublicFormSubmissionFilter, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::Crm::PublicIntegrationEventFilter, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::Crm::PublicWebinarFilter, HubspotSDK::Models::Crm::PublicEmailEventFilter, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::Crm::PublicAdsSearchFilter, HubspotSDK::Models::Crm::PublicAdsTimeFilter, HubspotSDK::Models::Crm::PublicInListFilter, HubspotSDK::Models::Crm::PublicNumAssociationsFilter, HubspotSDK::Models::Crm::PublicUnifiedEventsFilter, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubspotSDK::Models::Crm::PublicConstantFilter)]
        end
      end
    end
  end
end
