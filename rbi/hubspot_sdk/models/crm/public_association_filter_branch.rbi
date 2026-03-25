# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationFilterBranch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAssociationFilterBranch,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the category of the association for the filter branch
        # (HUBSPOT_DEFINED, USER_DEFINED, INTEGRATOR_DEFINED, WORK).
        sig { returns(String) }
        attr_accessor :association_category

        # Type id of the association
        sig { returns(Integer) }
        attr_accessor :association_type_id

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

        # Filter branch operator (AND)
        sig { returns(String) }
        attr_accessor :filter_branch_operator

        # Type of the filter branch (ASSOCIATION)
        sig do
          returns(
            HubspotSDK::Crm::PublicAssociationFilterBranch::FilterBranchType::OrSymbol
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

        # The ID representing the type of object associated with the filter branch.
        sig { returns(String) }
        attr_accessor :object_type_id

        # Defines the operation to be applied within the filter branch (IN_LIST,
        # NOT_IN_LIST).
        sig { returns(String) }
        attr_accessor :operator

        sig do
          params(
            association_category: String,
            association_type_id: Integer,
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
              HubspotSDK::Crm::PublicAssociationFilterBranch::FilterBranchType::OrSymbol,
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
              ],
            object_type_id: String,
            operator: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the category of the association for the filter branch
          # (HUBSPOT_DEFINED, USER_DEFINED, INTEGRATOR_DEFINED, WORK).
          association_category:,
          # Type id of the association
          association_type_id:,
          filter_branches:,
          # Filter branch operator (AND)
          filter_branch_operator:,
          # Type of the filter branch (ASSOCIATION)
          filter_branch_type:,
          filters:,
          # The ID representing the type of object associated with the filter branch.
          object_type_id:,
          # Defines the operation to be applied within the filter branch (IN_LIST,
          # NOT_IN_LIST).
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
                HubspotSDK::Crm::PublicAssociationFilterBranch::FilterBranchType::OrSymbol,
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
                HubspotSDK::Crm::PublicAssociationFilterBranch::FilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Type of the filter branch (ASSOCIATION)
        module FilterBranchType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicAssociationFilterBranch::FilterBranchType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubspotSDK::Crm::PublicAssociationFilterBranch::FilterBranchType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicAssociationFilterBranch::FilterBranchType::TaggedSymbol
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
                HubspotSDK::Crm::PublicAssociationFilterBranch::Filter::Variants
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
