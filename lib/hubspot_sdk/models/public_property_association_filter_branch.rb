# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicPropertyAssociationFilterBranch < HubspotSDK::Internal::Type::BaseModel
      # @!attribute filter_branches
      #
      #   @return [Array<HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch>]
      required :filter_branches,
               -> {
                 HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranch]
               },
               api_name: :filterBranches

      # @!attribute filter_branch_operator
      #
      #   @return [String]
      required :filter_branch_operator, String, api_name: :filterBranchOperator

      # @!attribute filter_branch_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicPropertyAssociationFilterBranch::FilterBranchType]
      required :filter_branch_type,
               enum: -> { HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranchType },
               api_name: :filterBranchType

      # @!attribute filters
      #
      #   @return [Array<HubspotSDK::Models::PublicPropertyFilter, HubspotSDK::Models::PublicAssociationInListFilter, HubspotSDK::Models::PublicPageViewAnalyticsFilter, HubspotSDK::Models::PublicCtaAnalyticsFilter, HubspotSDK::Models::PublicEventAnalyticsFilter, HubspotSDK::Models::PublicFormSubmissionFilter, HubspotSDK::Models::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::PublicIntegrationEventFilter, HubspotSDK::Models::PublicEmailSubscriptionFilter, HubspotSDK::Models::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::PublicCampaignInfluencedFilter, HubspotSDK::Models::PublicSurveyMonkeyFilter, HubspotSDK::Models::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::PublicWebinarFilter, HubspotSDK::Models::PublicEmailEventFilter, HubspotSDK::Models::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::PublicAdsSearchFilter, HubspotSDK::Models::PublicAdsTimeFilter, HubspotSDK::Models::PublicInListFilter, HubspotSDK::Models::PublicNumAssociationsFilter, HubspotSDK::Models::PublicUnifiedEventsFilter, HubspotSDK::Models::PublicPropertyAssociationInListFilter, HubspotSDK::Models::PublicConstantFilter>]
      required :filters,
               -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::PublicPropertyAssociationFilterBranch::Filter] }

      # @!attribute object_type_id
      #
      #   @return [String]
      required :object_type_id, String, api_name: :objectTypeId

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute property_with_object_id
      #
      #   @return [String]
      required :property_with_object_id, String, api_name: :propertyWithObjectId

      # @!method initialize(filter_branches:, filter_branch_operator:, filter_branch_type:, filters:, object_type_id:, operator:, property_with_object_id:)
      #   @param filter_branches [Array<HubspotSDK::Models::PublicOrFilterBranch, HubspotSDK::Models::PublicAndFilterBranch, HubspotSDK::Models::PublicNotAllFilterBranch, HubspotSDK::Models::PublicNotAnyFilterBranch, HubspotSDK::Models::PublicRestrictedFilterBranch, HubspotSDK::Models::PublicUnifiedEventsFilterBranch, HubspotSDK::Models::PublicPropertyAssociationFilterBranch, HubspotSDK::Models::PublicAssociationFilterBranch>]
      #   @param filter_branch_operator [String]
      #   @param filter_branch_type [Symbol, HubspotSDK::Models::PublicPropertyAssociationFilterBranch::FilterBranchType]
      #   @param filters [Array<HubspotSDK::Models::PublicPropertyFilter, HubspotSDK::Models::PublicAssociationInListFilter, HubspotSDK::Models::PublicPageViewAnalyticsFilter, HubspotSDK::Models::PublicCtaAnalyticsFilter, HubspotSDK::Models::PublicEventAnalyticsFilter, HubspotSDK::Models::PublicFormSubmissionFilter, HubspotSDK::Models::PublicFormSubmissionOnPageFilter, HubspotSDK::Models::PublicIntegrationEventFilter, HubspotSDK::Models::PublicEmailSubscriptionFilter, HubspotSDK::Models::PublicCommunicationSubscriptionFilter, HubspotSDK::Models::PublicCampaignInfluencedFilter, HubspotSDK::Models::PublicSurveyMonkeyFilter, HubspotSDK::Models::PublicSurveyMonkeyValueFilter, HubspotSDK::Models::PublicWebinarFilter, HubspotSDK::Models::PublicEmailEventFilter, HubspotSDK::Models::PublicPrivacyAnalyticsFilter, HubspotSDK::Models::PublicAdsSearchFilter, HubspotSDK::Models::PublicAdsTimeFilter, HubspotSDK::Models::PublicInListFilter, HubspotSDK::Models::PublicNumAssociationsFilter, HubspotSDK::Models::PublicUnifiedEventsFilter, HubspotSDK::Models::PublicPropertyAssociationInListFilter, HubspotSDK::Models::PublicConstantFilter>]
      #   @param object_type_id [String]
      #   @param operator [String]
      #   @param property_with_object_id [String]

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

      # @see HubspotSDK::Models::PublicPropertyAssociationFilterBranch#filter_branch_type
      module FilterBranchType
        extend HubspotSDK::Internal::Type::Enum

        PROPERTY_ASSOCIATION = :PROPERTY_ASSOCIATION

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
    end
  end
end
