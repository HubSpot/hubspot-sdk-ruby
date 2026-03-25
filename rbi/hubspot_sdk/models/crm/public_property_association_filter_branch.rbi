# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyAssociationFilterBranch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
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

        # The logical operator used to combine filters within the branch.
        sig { returns(String) }
        attr_accessor :filter_branch_operator

        # The type of the filter branch (PROPERTY_ASSOCIATION).
        sig do
          returns(
            HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType::OrSymbol
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

        # The property that is associated with the object ID in the filter branch.
        sig { returns(String) }
        attr_accessor :property_with_object_id

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
              HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType::OrSymbol,
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
            operator: String,
            property_with_object_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          filter_branches:,
          # The logical operator used to combine filters within the branch.
          filter_branch_operator:,
          # The type of the filter branch (PROPERTY_ASSOCIATION).
          filter_branch_type:,
          filters:,
          # The ID representing the type of object associated with the filter branch.
          object_type_id:,
          # Defines the operation to be applied within the filter branch (IN_LIST,
          # NOT_IN_LIST).
          operator:,
          # The property that is associated with the object ID in the filter branch.
          property_with_object_id:
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
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType::OrSymbol,
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
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The type of the filter branch (PROPERTY_ASSOCIATION).
        module FilterBranchType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY_ASSOCIATION =
            T.let(
              :PROPERTY_ASSOCIATION,
              HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::FilterBranchType::TaggedSymbol
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
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::Filter::Variants
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
