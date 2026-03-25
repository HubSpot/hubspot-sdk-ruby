# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicRestrictedFilterBranch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicRestrictedFilterBranch,
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

        # The logical operator used to combine filters within the restricted filter
        # branch.
        sig { returns(String) }
        attr_accessor :filter_branch_operator

        # Specifies the type of the filter branch (RESTRICTED).
        sig do
          returns(
            HubspotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::OrSymbol
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
              HubspotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::OrSymbol,
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
          # The logical operator used to combine filters within the restricted filter
          # branch.
          filter_branch_operator:,
          # Specifies the type of the filter branch (RESTRICTED).
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
                HubspotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::OrSymbol,
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
                HubspotSDK::Crm::PublicRestrictedFilterBranch::FilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Specifies the type of the filter branch (RESTRICTED).
        module FilterBranchType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RESTRICTED =
            T.let(
              :RESTRICTED,
              HubspotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::TaggedSymbol
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
                HubspotSDK::Crm::PublicRestrictedFilterBranch::Filter::Variants
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
