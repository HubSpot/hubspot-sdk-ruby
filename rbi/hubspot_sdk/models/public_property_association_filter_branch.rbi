# typed: strong

module HubspotSDK
  module Models
    class PublicPropertyAssociationFilterBranch < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicPropertyAssociationFilterBranch,
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
          HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranchType::OrSymbol
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

      sig { returns(String) }
      attr_accessor :property_with_object_id

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
            HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranchType::OrSymbol,
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
          operator: String,
          property_with_object_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        filter_branches:,
        filter_branch_operator:,
        filter_branch_type:,
        filters:,
        object_type_id:,
        operator:,
        property_with_object_id:
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
              HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranchType::OrSymbol,
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
            operator: String,
            property_with_object_id: String
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
              HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranch::Variants
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
              HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranchType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROPERTY_ASSOCIATION =
          T.let(
            :PROPERTY_ASSOCIATION,
            HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranchType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicPropertyAssociationFilterBranch::FilterBranchType::TaggedSymbol
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
              HubspotSDK::PublicPropertyAssociationFilterBranch::Filter::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
