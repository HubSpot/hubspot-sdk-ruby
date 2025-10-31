# typed: strong

module HubspotSDK
  module Models
    class PublicAssociationFilterBranch < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicAssociationFilterBranch,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :association_category

      sig { returns(Integer) }
      attr_accessor :association_type_id

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
          HubspotSDK::PublicAssociationFilterBranch::FilterBranchType::OrSymbol
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

      sig { returns(String) }
      attr_accessor :object_type_id

      sig { returns(String) }
      attr_accessor :operator

      sig do
        params(
          association_category: String,
          association_type_id: Integer,
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
            HubspotSDK::PublicAssociationFilterBranch::FilterBranchType::OrSymbol,
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
            ],
          object_type_id: String,
          operator: String
        ).returns(T.attached_class)
      end
      def self.new(
        association_category:,
        association_type_id:,
        filter_branches:,
        filter_branch_operator:,
        filter_branch_type:,
        filters:,
        object_type_id:,
        operator:
      )
      end

      sig do
        override.returns(
          {
            association_category: String,
            association_type_id: Integer,
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
              HubspotSDK::PublicAssociationFilterBranch::FilterBranchType::OrSymbol,
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
              ],
            object_type_id: String,
            operator: String
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
              HubspotSDK::PublicAssociationFilterBranch::FilterBranch::Variants
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
              HubspotSDK::PublicAssociationFilterBranch::FilterBranchType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASSOCIATION =
          T.let(
            :ASSOCIATION,
            HubspotSDK::PublicAssociationFilterBranch::FilterBranchType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicAssociationFilterBranch::FilterBranchType::TaggedSymbol
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
            T::Array[
              HubspotSDK::PublicAssociationFilterBranch::Filter::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
