# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicPropertyAssociationFilterBranch < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_branches
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch>]
        required :filter_branches,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranch]
                 },
                 api_name: :filterBranches

        # @!attribute filter_branch_operator
        #   The logical operator used to combine filters within the branch.
        #
        #   @return [String]
        required :filter_branch_operator, String, api_name: :filterBranchOperator

        # @!attribute filter_branch_type
        #   The type of the filter branch (PROPERTY_ASSOCIATION).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType]
        required :filter_branch_type,
                 enum: -> { HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType },
                 api_name: :filterBranchType

        # @!attribute filters
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicPropertyFilter, HubSpotSDK::Models::Crm::PublicAssociationInListFilter, HubSpotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubSpotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubSpotSDK::Models::Crm::PublicEventAnalyticsFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubSpotSDK::Models::Crm::PublicIntegrationEventFilter, HubSpotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubSpotSDK::Models::Crm::PublicWebinarFilter, HubSpotSDK::Models::Crm::PublicEmailEventFilter, HubSpotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubSpotSDK::Models::Crm::PublicAdsSearchFilter, HubSpotSDK::Models::Crm::PublicAdsTimeFilter, HubSpotSDK::Models::Crm::PublicInListFilter, HubSpotSDK::Models::Crm::PublicNumAssociationsFilter, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter, HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubSpotSDK::Models::Crm::PublicConstantFilter>]
        required :filters,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch::Filter] }

        # @!attribute object_type_id
        #   The ID representing the type of object associated with the filter branch.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute operator
        #   Defines the operation to be applied within the filter branch (IN_LIST,
        #   NOT_IN_LIST).
        #
        #   @return [String]
        required :operator, String

        # @!attribute property_with_object_id
        #   The property that is associated with the object ID in the filter branch.
        #
        #   @return [String]
        required :property_with_object_id, String, api_name: :propertyWithObjectId

        # @!method initialize(filter_branches:, filter_branch_operator:, filter_branch_type:, filters:, object_type_id:, operator:, property_with_object_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch} for more
        #   details.
        #
        #   @param filter_branches [Array<HubSpotSDK::Models::Crm::PublicOrFilterBranch, HubSpotSDK::Models::Crm::PublicAndFilterBranch, HubSpotSDK::Models::Crm::PublicNotAllFilterBranch, HubSpotSDK::Models::Crm::PublicNotAnyFilterBranch, HubSpotSDK::Models::Crm::PublicRestrictedFilterBranch, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilterBranch, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch, HubSpotSDK::Models::Crm::PublicAssociationFilterBranch>]
        #
        #   @param filter_branch_operator [String] The logical operator used to combine filters within the branch.
        #
        #   @param filter_branch_type [Symbol, HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType] The type of the filter branch (PROPERTY_ASSOCIATION).
        #
        #   @param filters [Array<HubSpotSDK::Models::Crm::PublicPropertyFilter, HubSpotSDK::Models::Crm::PublicAssociationInListFilter, HubSpotSDK::Models::Crm::PublicPageViewAnalyticsFilter, HubSpotSDK::Models::Crm::PublicCtaAnalyticsFilter, HubSpotSDK::Models::Crm::PublicEventAnalyticsFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter, HubSpotSDK::Models::Crm::PublicIntegrationEventFilter, HubSpotSDK::Models::Crm::PublicEmailSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCommunicationSubscriptionFilter, HubSpotSDK::Models::Crm::PublicCampaignInfluencedFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter, HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter, HubSpotSDK::Models::Crm::PublicWebinarFilter, HubSpotSDK::Models::Crm::PublicEmailEventFilter, HubSpotSDK::Models::Crm::PublicPrivacyAnalyticsFilter, HubSpotSDK::Models::Crm::PublicAdsSearchFilter, HubSpotSDK::Models::Crm::PublicAdsTimeFilter, HubSpotSDK::Models::Crm::PublicInListFilter, HubSpotSDK::Models::Crm::PublicNumAssociationsFilter, HubSpotSDK::Models::Crm::PublicUnifiedEventsFilter, HubSpotSDK::Models::Crm::PublicPropertyAssociationInListFilter, HubSpotSDK::Models::Crm::PublicConstantFilter>]
        #
        #   @param object_type_id [String] The ID representing the type of object associated with the filter branch.
        #
        #   @param operator [String] Defines the operation to be applied within the filter branch (IN_LIST, NOT_IN_LI
        #
        #   @param property_with_object_id [String] The property that is associated with the object ID in the filter branch.

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

        # The type of the filter branch (PROPERTY_ASSOCIATION).
        #
        # @see HubSpotSDK::Models::Crm::PublicPropertyAssociationFilterBranch#filter_branch_type
        module FilterBranchType
          extend HubSpotSDK::Internal::Type::Enum

          PROPERTY_ASSOCIATION = :PROPERTY_ASSOCIATION

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
      end
    end
  end
end
