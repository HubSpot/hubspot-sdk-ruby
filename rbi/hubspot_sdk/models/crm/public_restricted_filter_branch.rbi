# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicRestrictedFilterBranch < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicRestrictedFilterBranch,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch,
                HubSpotSDK::Crm::PublicAndFilterBranch,
                HubSpotSDK::Crm::PublicNotAllFilterBranch,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubSpotSDK::Crm::PublicAssociationFilterBranch
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
            HubSpotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::OrSymbol
          )
        end
        attr_accessor :filter_branch_type

        sig do
          returns(
            T::Array[
              T.any(
                HubSpotSDK::Crm::PublicPropertyFilter,
                HubSpotSDK::Crm::PublicAssociationInListFilter,
                HubSpotSDK::Crm::PublicPageViewAnalyticsFilter,
                HubSpotSDK::Crm::PublicCtaAnalyticsFilter,
                HubSpotSDK::Crm::PublicEventAnalyticsFilter,
                HubSpotSDK::Crm::PublicFormSubmissionFilter,
                HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter,
                HubSpotSDK::Crm::PublicIntegrationEventFilter,
                HubSpotSDK::Crm::PublicEmailSubscriptionFilter,
                HubSpotSDK::Crm::PublicCommunicationSubscriptionFilter,
                HubSpotSDK::Crm::PublicCampaignInfluencedFilter,
                HubSpotSDK::Crm::PublicSurveyMonkeyFilter,
                HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter,
                HubSpotSDK::Crm::PublicWebinarFilter,
                HubSpotSDK::Crm::PublicEmailEventFilter,
                HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter,
                HubSpotSDK::Crm::PublicAdsSearchFilter,
                HubSpotSDK::Crm::PublicAdsTimeFilter,
                HubSpotSDK::Crm::PublicInListFilter,
                HubSpotSDK::Crm::PublicNumAssociationsFilter,
                HubSpotSDK::Crm::PublicUnifiedEventsFilter,
                HubSpotSDK::Crm::PublicPropertyAssociationInListFilter,
                HubSpotSDK::Crm::PublicConstantFilter
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
                  HubSpotSDK::Crm::PublicOrFilterBranch,
                  HubSpotSDK::Crm::PublicAndFilterBranch,
                  HubSpotSDK::Crm::PublicNotAllFilterBranch,
                  HubSpotSDK::Crm::PublicNotAnyFilterBranch,
                  HubSpotSDK::Crm::PublicRestrictedFilterBranch,
                  HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
                  HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch,
                  HubSpotSDK::Crm::PublicAssociationFilterBranch
                )
              ],
            filter_branch_operator: String,
            filter_branch_type:
              HubSpotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::OrSymbol,
            filters:
              T::Array[
                T.any(
                  HubSpotSDK::Crm::PublicPropertyFilter::OrHash,
                  HubSpotSDK::Crm::PublicAssociationInListFilter::OrHash,
                  HubSpotSDK::Crm::PublicPageViewAnalyticsFilter::OrHash,
                  HubSpotSDK::Crm::PublicCtaAnalyticsFilter::OrHash,
                  HubSpotSDK::Crm::PublicEventAnalyticsFilter::OrHash,
                  HubSpotSDK::Crm::PublicFormSubmissionFilter::OrHash,
                  HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter::OrHash,
                  HubSpotSDK::Crm::PublicIntegrationEventFilter::OrHash,
                  HubSpotSDK::Crm::PublicEmailSubscriptionFilter::OrHash,
                  HubSpotSDK::Crm::PublicCommunicationSubscriptionFilter::OrHash,
                  HubSpotSDK::Crm::PublicCampaignInfluencedFilter::OrHash,
                  HubSpotSDK::Crm::PublicSurveyMonkeyFilter::OrHash,
                  HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::OrHash,
                  HubSpotSDK::Crm::PublicWebinarFilter::OrHash,
                  HubSpotSDK::Crm::PublicEmailEventFilter::OrHash,
                  HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter::OrHash,
                  HubSpotSDK::Crm::PublicAdsSearchFilter::OrHash,
                  HubSpotSDK::Crm::PublicAdsTimeFilter::OrHash,
                  HubSpotSDK::Crm::PublicInListFilter::OrHash,
                  HubSpotSDK::Crm::PublicNumAssociationsFilter::OrHash,
                  HubSpotSDK::Crm::PublicUnifiedEventsFilter::OrHash,
                  HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::OrHash,
                  HubSpotSDK::Crm::PublicConstantFilter::OrHash
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
                    HubSpotSDK::Crm::PublicOrFilterBranch,
                    HubSpotSDK::Crm::PublicAndFilterBranch,
                    HubSpotSDK::Crm::PublicNotAllFilterBranch,
                    HubSpotSDK::Crm::PublicNotAnyFilterBranch,
                    HubSpotSDK::Crm::PublicRestrictedFilterBranch,
                    HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
                    HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch,
                    HubSpotSDK::Crm::PublicAssociationFilterBranch
                  )
                ],
              filter_branch_operator: String,
              filter_branch_type:
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::OrSymbol,
              filters:
                T::Array[
                  T.any(
                    HubSpotSDK::Crm::PublicPropertyFilter,
                    HubSpotSDK::Crm::PublicAssociationInListFilter,
                    HubSpotSDK::Crm::PublicPageViewAnalyticsFilter,
                    HubSpotSDK::Crm::PublicCtaAnalyticsFilter,
                    HubSpotSDK::Crm::PublicEventAnalyticsFilter,
                    HubSpotSDK::Crm::PublicFormSubmissionFilter,
                    HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter,
                    HubSpotSDK::Crm::PublicIntegrationEventFilter,
                    HubSpotSDK::Crm::PublicEmailSubscriptionFilter,
                    HubSpotSDK::Crm::PublicCommunicationSubscriptionFilter,
                    HubSpotSDK::Crm::PublicCampaignInfluencedFilter,
                    HubSpotSDK::Crm::PublicSurveyMonkeyFilter,
                    HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter,
                    HubSpotSDK::Crm::PublicWebinarFilter,
                    HubSpotSDK::Crm::PublicEmailEventFilter,
                    HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter,
                    HubSpotSDK::Crm::PublicAdsSearchFilter,
                    HubSpotSDK::Crm::PublicAdsTimeFilter,
                    HubSpotSDK::Crm::PublicInListFilter,
                    HubSpotSDK::Crm::PublicNumAssociationsFilter,
                    HubSpotSDK::Crm::PublicUnifiedEventsFilter,
                    HubSpotSDK::Crm::PublicPropertyAssociationInListFilter,
                    HubSpotSDK::Crm::PublicConstantFilter
                  )
                ]
            }
          )
        end
        def to_hash
        end

        module FilterBranch
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch,
                HubSpotSDK::Crm::PublicAndFilterBranch,
                HubSpotSDK::Crm::PublicNotAllFilterBranch,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubSpotSDK::Crm::PublicAssociationFilterBranch
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::FilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Specifies the type of the filter branch (RESTRICTED).
        module FilterBranchType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RESTRICTED =
            T.let(
              :RESTRICTED,
              HubSpotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::FilterBranchType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Filter
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicPropertyFilter,
                HubSpotSDK::Crm::PublicAssociationInListFilter,
                HubSpotSDK::Crm::PublicPageViewAnalyticsFilter,
                HubSpotSDK::Crm::PublicCtaAnalyticsFilter,
                HubSpotSDK::Crm::PublicEventAnalyticsFilter,
                HubSpotSDK::Crm::PublicFormSubmissionFilter,
                HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter,
                HubSpotSDK::Crm::PublicIntegrationEventFilter,
                HubSpotSDK::Crm::PublicEmailSubscriptionFilter,
                HubSpotSDK::Crm::PublicCommunicationSubscriptionFilter,
                HubSpotSDK::Crm::PublicCampaignInfluencedFilter,
                HubSpotSDK::Crm::PublicSurveyMonkeyFilter,
                HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter,
                HubSpotSDK::Crm::PublicWebinarFilter,
                HubSpotSDK::Crm::PublicEmailEventFilter,
                HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter,
                HubSpotSDK::Crm::PublicAdsSearchFilter,
                HubSpotSDK::Crm::PublicAdsTimeFilter,
                HubSpotSDK::Crm::PublicInListFilter,
                HubSpotSDK::Crm::PublicNumAssociationsFilter,
                HubSpotSDK::Crm::PublicUnifiedEventsFilter,
                HubSpotSDK::Crm::PublicPropertyAssociationInListFilter,
                HubSpotSDK::Crm::PublicConstantFilter
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::Filter::Variants
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
