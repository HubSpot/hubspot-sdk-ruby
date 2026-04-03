# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAndFilterBranch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_branches
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch>]
        required :filter_branches,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::PublicAndFilterBranch::FilterBranch]
                 },
                 api_name: :filterBranches

        # @!attribute filter_branch_operator
        #   Filter branch operator (AND)
        #
        #   @return [String]
        required :filter_branch_operator, String, api_name: :filterBranchOperator

        # @!attribute filter_branch_type
        #   Type of filter branch (AND)
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicAndFilterBranch::FilterBranchType]
        required :filter_branch_type,
                 enum: -> { HubspotSDK::Crm::PublicAndFilterBranch::FilterBranchType },
                 api_name: :filterBranchType

        # @!attribute filters
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicPropertyFilter, HubspotSDK::Models::Crm::PublicAssociationInListFilter, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubspotSDK::Models::Crm::PublicEventAnalyticsFilter, HubspotSDK::Models::Crm::PublicFormSubmissionFilter, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::Crm::PublicIntegrationEventFilter, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::Crm::PublicWebinarFilter, HubspotSDK::Models::Crm::PublicEmailEventFilter, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::Crm::PublicAdsSearchFilter, HubspotSDK::Models::Crm::PublicAdsTimeFilter, HubspotSDK::Models::Crm::PublicInListFilter, HubspotSDK::Models::Crm::PublicNumAssociationsFilter, HubspotSDK::Models::Crm::PublicUnifiedEventsFilter, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubspotSDK::Models::Crm::PublicConstantFilter>]
        required :filters,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::PublicAndFilterBranch::Filter] }

        # @!method initialize(filter_branches:, filter_branch_operator:, filter_branch_type:, filters:)
        #   @param filter_branches [Array<HubspotSDK::Models::Crm::PublicOrFilterBranch, HubspotSDK::Models::Crm::PublicAndFilterBranch, HubspotSDK::Models::Crm::PublicNotAllFilterBranch, HubspotSDK::Models::Crm::PublicNotAnyFilterBranch, HubspotSDK::Models::Crm::PublicRestrictedFilterBranch, HubspotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::Crm::PublicAssociationFilterBranch>]
        #
        #   @param filter_branch_operator [String] Filter branch operator (AND)
        #
        #   @param filter_branch_type [Symbol, HubspotSDK::Models::Crm::PublicAndFilterBranch::FilterBranchType] Type of filter branch (AND)
        #
        #   @param filters [Array<HubspotSDK::Models::Crm::PublicPropertyFilter, HubspotSDK::Models::Crm::PublicAssociationInListFilter, HubspotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubspotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubspotSDK::Models::Crm::PublicEventAnalyticsFilter, HubspotSDK::Models::Crm::PublicFormSubmissionFilter, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::Crm::PublicIntegrationEventFilter, HubspotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubspotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::Crm::PublicWebinarFilter, HubspotSDK::Models::Crm::PublicEmailEventFilter, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::Crm::PublicAdsSearchFilter, HubspotSDK::Models::Crm::PublicAdsTimeFilter, HubspotSDK::Models::Crm::PublicInListFilter, HubspotSDK::Models::Crm::PublicNumAssociationsFilter, HubspotSDK::Models::Crm::PublicUnifiedEventsFilter, HubspotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubspotSDK::Models::Crm::PublicConstantFilter>]

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

        # Type of filter branch (AND)
        #
        # @see HubspotSDK::Models::Crm::PublicAndFilterBranch#filter_branch_type
        module FilterBranchType
          extend HubspotSDK::Internal::Type::Enum

          AND = :AND

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
      end
    end
  end
end
