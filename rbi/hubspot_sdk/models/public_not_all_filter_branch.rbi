# typed: strong

module HubspotSDK
  module Models
    class PublicNotAllFilterBranch < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicNotAllFilterBranch,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            T.any(
              HubspotSDK::PublicOrFilterBranch,
              HubspotSDK::PublicAndFilterBranch,
              HubspotSDK::PublicNotAllFilterBranch,
              HubspotSDK::PublicNotAnyFilterBranch,
              HubspotSDK::PublicRestrictedFilterBranch,
              HubspotSDK::PublicUnifiedEventsFilterBranch,
              HubspotSDK::PublicPropertyAssociationFilterBranch,
              HubspotSDK::PublicAssociationFilterBranch
            )
          ]
        )
      end
      attr_accessor :filter_branches

      sig { returns(String) }
      attr_accessor :filter_branch_operator

      sig do
        returns(
          HubspotSDK::PublicNotAllFilterBranch::FilterBranchType::OrSymbol
        )
      end
      attr_accessor :filter_branch_type

      sig do
        returns(
          T::Array[
            T.any(
              HubspotSDK::PublicPropertyFilter,
              HubspotSDK::PublicAssociationInListFilter,
              HubspotSDK::PublicPageViewAnalyticsFilter,
              HubspotSDK::PublicCtaAnalyticsFilter,
              HubspotSDK::PublicEventAnalyticsFilter,
              HubspotSDK::PublicFormSubmissionFilter,
              HubspotSDK::PublicFormSubmissionOnPageFilter,
              HubspotSDK::PublicIntegrationEventFilter,
              HubspotSDK::PublicEmailSubscriptionFilter,
              HubspotSDK::PublicCommunicationSubscriptionFilter,
              HubspotSDK::PublicCampaignInfluencedFilter,
              HubspotSDK::PublicSurveyMonkeyFilter,
              HubspotSDK::PublicSurveyMonkeyValueFilter,
              HubspotSDK::PublicWebinarFilter,
              HubspotSDK::PublicEmailEventFilter,
              HubspotSDK::PublicPrivacyAnalyticsFilter,
              HubspotSDK::PublicAdsSearchFilter,
              HubspotSDK::PublicAdsTimeFilter,
              HubspotSDK::PublicInListFilter,
              HubspotSDK::PublicNumAssociationsFilter,
              HubspotSDK::PublicUnifiedEventsFilter,
              HubspotSDK::PublicPropertyAssociationInListFilter,
              HubspotSDK::PublicConstantFilter
            )
          ]
        )
      end
      attr_accessor :filters

      sig do
        params(
          filter_branches:
            T::Array[
              T.any(
                HubspotSDK::PublicOrFilterBranch,
                HubspotSDK::PublicAndFilterBranch,
                HubspotSDK::PublicNotAllFilterBranch,
                HubspotSDK::PublicNotAnyFilterBranch,
                HubspotSDK::PublicRestrictedFilterBranch,
                HubspotSDK::PublicUnifiedEventsFilterBranch,
                HubspotSDK::PublicPropertyAssociationFilterBranch,
                HubspotSDK::PublicAssociationFilterBranch
              )
            ],
          filter_branch_operator: String,
          filter_branch_type:
            HubspotSDK::PublicNotAllFilterBranch::FilterBranchType::OrSymbol,
          filters:
            T::Array[
              T.any(
                HubspotSDK::PublicPropertyFilter::OrHash,
                HubspotSDK::PublicAssociationInListFilter::OrHash,
                HubspotSDK::PublicPageViewAnalyticsFilter::OrHash,
                HubspotSDK::PublicCtaAnalyticsFilter::OrHash,
                HubspotSDK::PublicEventAnalyticsFilter::OrHash,
                HubspotSDK::PublicFormSubmissionFilter::OrHash,
                HubspotSDK::PublicFormSubmissionOnPageFilter::OrHash,
                HubspotSDK::PublicIntegrationEventFilter::OrHash,
                HubspotSDK::PublicEmailSubscriptionFilter::OrHash,
                HubspotSDK::PublicCommunicationSubscriptionFilter::OrHash,
                HubspotSDK::PublicCampaignInfluencedFilter::OrHash,
                HubspotSDK::PublicSurveyMonkeyFilter::OrHash,
                HubspotSDK::PublicSurveyMonkeyValueFilter::OrHash,
                HubspotSDK::PublicWebinarFilter::OrHash,
                HubspotSDK::PublicEmailEventFilter::OrHash,
                HubspotSDK::PublicPrivacyAnalyticsFilter::OrHash,
                HubspotSDK::PublicAdsSearchFilter::OrHash,
                HubspotSDK::PublicAdsTimeFilter::OrHash,
                HubspotSDK::PublicInListFilter::OrHash,
                HubspotSDK::PublicNumAssociationsFilter::OrHash,
                HubspotSDK::PublicUnifiedEventsFilter::OrHash,
                HubspotSDK::PublicPropertyAssociationInListFilter::OrHash,
                HubspotSDK::PublicConstantFilter::OrHash
              )
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        filter_branches:,
        filter_branch_operator:,
        filter_branch_type:,
        filters:
      )
      end

      sig do
        override.returns(
          {
            filter_branches:
              T::Array[
                T.any(
                  HubspotSDK::PublicOrFilterBranch,
                  HubspotSDK::PublicAndFilterBranch,
                  HubspotSDK::PublicNotAllFilterBranch,
                  HubspotSDK::PublicNotAnyFilterBranch,
                  HubspotSDK::PublicRestrictedFilterBranch,
                  HubspotSDK::PublicUnifiedEventsFilterBranch,
                  HubspotSDK::PublicPropertyAssociationFilterBranch,
                  HubspotSDK::PublicAssociationFilterBranch
                )
              ],
            filter_branch_operator: String,
            filter_branch_type:
              HubspotSDK::PublicNotAllFilterBranch::FilterBranchType::OrSymbol,
            filters:
              T::Array[
                T.any(
                  HubspotSDK::PublicPropertyFilter,
                  HubspotSDK::PublicAssociationInListFilter,
                  HubspotSDK::PublicPageViewAnalyticsFilter,
                  HubspotSDK::PublicCtaAnalyticsFilter,
                  HubspotSDK::PublicEventAnalyticsFilter,
                  HubspotSDK::PublicFormSubmissionFilter,
                  HubspotSDK::PublicFormSubmissionOnPageFilter,
                  HubspotSDK::PublicIntegrationEventFilter,
                  HubspotSDK::PublicEmailSubscriptionFilter,
                  HubspotSDK::PublicCommunicationSubscriptionFilter,
                  HubspotSDK::PublicCampaignInfluencedFilter,
                  HubspotSDK::PublicSurveyMonkeyFilter,
                  HubspotSDK::PublicSurveyMonkeyValueFilter,
                  HubspotSDK::PublicWebinarFilter,
                  HubspotSDK::PublicEmailEventFilter,
                  HubspotSDK::PublicPrivacyAnalyticsFilter,
                  HubspotSDK::PublicAdsSearchFilter,
                  HubspotSDK::PublicAdsTimeFilter,
                  HubspotSDK::PublicInListFilter,
                  HubspotSDK::PublicNumAssociationsFilter,
                  HubspotSDK::PublicUnifiedEventsFilter,
                  HubspotSDK::PublicPropertyAssociationInListFilter,
                  HubspotSDK::PublicConstantFilter
                )
              ]
          }
        )
      end
      def to_hash
      end

      module FilterBranch
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::PublicOrFilterBranch,
              HubspotSDK::PublicAndFilterBranch,
              HubspotSDK::PublicNotAllFilterBranch,
              HubspotSDK::PublicNotAnyFilterBranch,
              HubspotSDK::PublicRestrictedFilterBranch,
              HubspotSDK::PublicUnifiedEventsFilterBranch,
              HubspotSDK::PublicPropertyAssociationFilterBranch,
              HubspotSDK::PublicAssociationFilterBranch
            )
          end

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicNotAllFilterBranch::FilterBranch::Variants
            ]
          )
        end
        def self.variants
        end
      end

      module FilterBranchType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicNotAllFilterBranch::FilterBranchType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_ALL =
          T.let(
            :NOT_ALL,
            HubspotSDK::PublicNotAllFilterBranch::FilterBranchType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicNotAllFilterBranch::FilterBranchType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Filter
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::PublicPropertyFilter,
              HubspotSDK::PublicAssociationInListFilter,
              HubspotSDK::PublicPageViewAnalyticsFilter,
              HubspotSDK::PublicCtaAnalyticsFilter,
              HubspotSDK::PublicEventAnalyticsFilter,
              HubspotSDK::PublicFormSubmissionFilter,
              HubspotSDK::PublicFormSubmissionOnPageFilter,
              HubspotSDK::PublicIntegrationEventFilter,
              HubspotSDK::PublicEmailSubscriptionFilter,
              HubspotSDK::PublicCommunicationSubscriptionFilter,
              HubspotSDK::PublicCampaignInfluencedFilter,
              HubspotSDK::PublicSurveyMonkeyFilter,
              HubspotSDK::PublicSurveyMonkeyValueFilter,
              HubspotSDK::PublicWebinarFilter,
              HubspotSDK::PublicEmailEventFilter,
              HubspotSDK::PublicPrivacyAnalyticsFilter,
              HubspotSDK::PublicAdsSearchFilter,
              HubspotSDK::PublicAdsTimeFilter,
              HubspotSDK::PublicInListFilter,
              HubspotSDK::PublicNumAssociationsFilter,
              HubspotSDK::PublicUnifiedEventsFilter,
              HubspotSDK::PublicPropertyAssociationInListFilter,
              HubspotSDK::PublicConstantFilter
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicNotAllFilterBranch::Filter::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
