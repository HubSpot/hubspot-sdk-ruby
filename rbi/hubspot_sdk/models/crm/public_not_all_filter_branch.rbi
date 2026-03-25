# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicNotAllFilterBranch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicNotAllFilterBranch,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Crm::PublicOrFilterBranch,
                HubspotSDK::Crm::PublicAndFilterBranch,
                HubspotSDK::Crm::PublicNotAllFilterBranch,
                HubspotSDK::Crm::PublicNotAnyFilterBranch,
                HubspotSDK::Crm::PublicRestrictedFilterBranch,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubspotSDK::Crm::PublicAssociationFilterBranch
              )
            ]
          )
        end
        attr_accessor :filter_branches

        # The operator used to combine filters within the branch (NOT_ALL).
        sig { returns(String) }
        attr_accessor :filter_branch_operator

        # The type of the filter branch (NOT_ALL).
        sig do
          returns(
            HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranchType::OrSymbol
          )
        end
        attr_accessor :filter_branch_type

        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Crm::PublicPropertyFilter,
                HubspotSDK::Crm::PublicAssociationInListFilter,
                HubspotSDK::Crm::PublicPageViewAnalyticsFilter,
                HubspotSDK::Crm::PublicCtaAnalyticsFilter,
                HubspotSDK::Crm::PublicEventAnalyticsFilter,
                HubspotSDK::Crm::PublicFormSubmissionFilter,
                HubspotSDK::Crm::PublicFormSubmissionOnPageFilter,
                HubspotSDK::Crm::PublicIntegrationEventFilter,
                HubspotSDK::Crm::PublicEmailSubscriptionFilter,
                HubspotSDK::Crm::PublicCommunicationSubscriptionFilter,
                HubspotSDK::Crm::PublicCampaignInfluencedFilter,
                HubspotSDK::Crm::PublicSurveyMonkeyFilter,
                HubspotSDK::Crm::PublicSurveyMonkeyValueFilter,
                HubspotSDK::Crm::PublicWebinarFilter,
                HubspotSDK::Crm::PublicEmailEventFilter,
                HubspotSDK::Crm::PublicPrivacyAnalyticsFilter,
                HubspotSDK::Crm::PublicAdsSearchFilter,
                HubspotSDK::Crm::PublicAdsTimeFilter,
                HubspotSDK::Crm::PublicInListFilter,
                HubspotSDK::Crm::PublicNumAssociationsFilter,
                HubspotSDK::Crm::PublicUnifiedEventsFilter,
                HubspotSDK::Crm::PublicPropertyAssociationInListFilter,
                HubspotSDK::Crm::PublicConstantFilter
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
                  HubspotSDK::Crm::PublicOrFilterBranch,
                  HubspotSDK::Crm::PublicAndFilterBranch,
                  HubspotSDK::Crm::PublicNotAllFilterBranch,
                  HubspotSDK::Crm::PublicNotAnyFilterBranch,
                  HubspotSDK::Crm::PublicRestrictedFilterBranch,
                  HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                  HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                  HubspotSDK::Crm::PublicAssociationFilterBranch
                )
              ],
            filter_branch_operator: String,
            filter_branch_type:
              HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranchType::OrSymbol,
            filters:
              T::Array[
                T.any(
                  HubspotSDK::Crm::PublicPropertyFilter::OrHash,
                  HubspotSDK::Crm::PublicAssociationInListFilter::OrHash,
                  HubspotSDK::Crm::PublicPageViewAnalyticsFilter::OrHash,
                  HubspotSDK::Crm::PublicCtaAnalyticsFilter::OrHash,
                  HubspotSDK::Crm::PublicEventAnalyticsFilter::OrHash,
                  HubspotSDK::Crm::PublicFormSubmissionFilter::OrHash,
                  HubspotSDK::Crm::PublicFormSubmissionOnPageFilter::OrHash,
                  HubspotSDK::Crm::PublicIntegrationEventFilter::OrHash,
                  HubspotSDK::Crm::PublicEmailSubscriptionFilter::OrHash,
                  HubspotSDK::Crm::PublicCommunicationSubscriptionFilter::OrHash,
                  HubspotSDK::Crm::PublicCampaignInfluencedFilter::OrHash,
                  HubspotSDK::Crm::PublicSurveyMonkeyFilter::OrHash,
                  HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::OrHash,
                  HubspotSDK::Crm::PublicWebinarFilter::OrHash,
                  HubspotSDK::Crm::PublicEmailEventFilter::OrHash,
                  HubspotSDK::Crm::PublicPrivacyAnalyticsFilter::OrHash,
                  HubspotSDK::Crm::PublicAdsSearchFilter::OrHash,
                  HubspotSDK::Crm::PublicAdsTimeFilter::OrHash,
                  HubspotSDK::Crm::PublicInListFilter::OrHash,
                  HubspotSDK::Crm::PublicNumAssociationsFilter::OrHash,
                  HubspotSDK::Crm::PublicUnifiedEventsFilter::OrHash,
                  HubspotSDK::Crm::PublicPropertyAssociationInListFilter::OrHash,
                  HubspotSDK::Crm::PublicConstantFilter::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          filter_branches:,
          # The operator used to combine filters within the branch (NOT_ALL).
          filter_branch_operator:,
          # The type of the filter branch (NOT_ALL).
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
                    HubspotSDK::Crm::PublicOrFilterBranch,
                    HubspotSDK::Crm::PublicAndFilterBranch,
                    HubspotSDK::Crm::PublicNotAllFilterBranch,
                    HubspotSDK::Crm::PublicNotAnyFilterBranch,
                    HubspotSDK::Crm::PublicRestrictedFilterBranch,
                    HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                    HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                    HubspotSDK::Crm::PublicAssociationFilterBranch
                  )
                ],
              filter_branch_operator: String,
              filter_branch_type:
                HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranchType::OrSymbol,
              filters:
                T::Array[
                  T.any(
                    HubspotSDK::Crm::PublicPropertyFilter,
                    HubspotSDK::Crm::PublicAssociationInListFilter,
                    HubspotSDK::Crm::PublicPageViewAnalyticsFilter,
                    HubspotSDK::Crm::PublicCtaAnalyticsFilter,
                    HubspotSDK::Crm::PublicEventAnalyticsFilter,
                    HubspotSDK::Crm::PublicFormSubmissionFilter,
                    HubspotSDK::Crm::PublicFormSubmissionOnPageFilter,
                    HubspotSDK::Crm::PublicIntegrationEventFilter,
                    HubspotSDK::Crm::PublicEmailSubscriptionFilter,
                    HubspotSDK::Crm::PublicCommunicationSubscriptionFilter,
                    HubspotSDK::Crm::PublicCampaignInfluencedFilter,
                    HubspotSDK::Crm::PublicSurveyMonkeyFilter,
                    HubspotSDK::Crm::PublicSurveyMonkeyValueFilter,
                    HubspotSDK::Crm::PublicWebinarFilter,
                    HubspotSDK::Crm::PublicEmailEventFilter,
                    HubspotSDK::Crm::PublicPrivacyAnalyticsFilter,
                    HubspotSDK::Crm::PublicAdsSearchFilter,
                    HubspotSDK::Crm::PublicAdsTimeFilter,
                    HubspotSDK::Crm::PublicInListFilter,
                    HubspotSDK::Crm::PublicNumAssociationsFilter,
                    HubspotSDK::Crm::PublicUnifiedEventsFilter,
                    HubspotSDK::Crm::PublicPropertyAssociationInListFilter,
                    HubspotSDK::Crm::PublicConstantFilter
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
                HubspotSDK::Crm::PublicOrFilterBranch,
                HubspotSDK::Crm::PublicAndFilterBranch,
                HubspotSDK::Crm::PublicNotAllFilterBranch,
                HubspotSDK::Crm::PublicNotAnyFilterBranch,
                HubspotSDK::Crm::PublicRestrictedFilterBranch,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubspotSDK::Crm::PublicAssociationFilterBranch
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The type of the filter branch (NOT_ALL).
        module FilterBranchType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranchType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_ALL =
            T.let(
              :NOT_ALL,
              HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranchType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicNotAllFilterBranch::FilterBranchType::TaggedSymbol
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
                HubspotSDK::Crm::PublicPropertyFilter,
                HubspotSDK::Crm::PublicAssociationInListFilter,
                HubspotSDK::Crm::PublicPageViewAnalyticsFilter,
                HubspotSDK::Crm::PublicCtaAnalyticsFilter,
                HubspotSDK::Crm::PublicEventAnalyticsFilter,
                HubspotSDK::Crm::PublicFormSubmissionFilter,
                HubspotSDK::Crm::PublicFormSubmissionOnPageFilter,
                HubspotSDK::Crm::PublicIntegrationEventFilter,
                HubspotSDK::Crm::PublicEmailSubscriptionFilter,
                HubspotSDK::Crm::PublicCommunicationSubscriptionFilter,
                HubspotSDK::Crm::PublicCampaignInfluencedFilter,
                HubspotSDK::Crm::PublicSurveyMonkeyFilter,
                HubspotSDK::Crm::PublicSurveyMonkeyValueFilter,
                HubspotSDK::Crm::PublicWebinarFilter,
                HubspotSDK::Crm::PublicEmailEventFilter,
                HubspotSDK::Crm::PublicPrivacyAnalyticsFilter,
                HubspotSDK::Crm::PublicAdsSearchFilter,
                HubspotSDK::Crm::PublicAdsTimeFilter,
                HubspotSDK::Crm::PublicInListFilter,
                HubspotSDK::Crm::PublicNumAssociationsFilter,
                HubspotSDK::Crm::PublicUnifiedEventsFilter,
                HubspotSDK::Crm::PublicPropertyAssociationInListFilter,
                HubspotSDK::Crm::PublicConstantFilter
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicNotAllFilterBranch::Filter::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
