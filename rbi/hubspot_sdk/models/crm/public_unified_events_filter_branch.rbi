# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicUnifiedEventsFilterBranch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The identifier for the type of event associated with the filter branch.
        sig { returns(String) }
        attr_accessor :event_type_id

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

        # The logical operator used to combine filters within the branch (AND).
        sig { returns(String) }
        attr_accessor :filter_branch_operator

        # The type of the filter branch (UNIFIED_EVENTS).
        sig do
          returns(
            HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol
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

        # Defines the operation to be applied within the filter branch (HAS_COMPLETED,
        # HAS_NOT_COMPLETED).
        sig do
          returns(
            HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::OrSymbol
          )
        end
        attr_accessor :operator

        # Specifies the criteria for refining the filter by coalescing.
        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAllHistoryRefineBy,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            )
          )
        end
        attr_reader :coalescing_refine_by

        sig do
          params(
            coalescing_refine_by:
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
              )
          ).void
        end
        attr_writer :coalescing_refine_by

        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAllHistoryRefineBy,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            )
          )
        end
        attr_reader :pruning_refine_by

        sig do
          params(
            pruning_refine_by:
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
              )
          ).void
        end
        attr_writer :pruning_refine_by

        sig do
          params(
            event_type_id: String,
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
              HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol,
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
            operator:
              HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::OrSymbol,
            coalescing_refine_by:
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
              ),
            pruning_refine_by:
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The identifier for the type of event associated with the filter branch.
          event_type_id:,
          filter_branches:,
          # The logical operator used to combine filters within the branch (AND).
          filter_branch_operator:,
          # The type of the filter branch (UNIFIED_EVENTS).
          filter_branch_type:,
          filters:,
          # Defines the operation to be applied within the filter branch (HAS_COMPLETED,
          # HAS_NOT_COMPLETED).
          operator:,
          # Specifies the criteria for refining the filter by coalescing.
          coalescing_refine_by: nil,
          pruning_refine_by: nil
        )
        end

        sig do
          override.returns(
            {
              event_type_id: String,
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
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol,
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
              operator:
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::OrSymbol,
              coalescing_refine_by:
                T.any(
                  HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                  HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                  HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                  HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                  HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                  HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                  HubspotSDK::Crm::PublicAllHistoryRefineBy,
                  HubspotSDK::Crm::PublicTimePointOperation,
                  HubspotSDK::Crm::PublicRangedTimeOperation
                ),
              pruning_refine_by:
                T.any(
                  HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                  HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                  HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                  HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                  HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                  HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                  HubspotSDK::Crm::PublicAllHistoryRefineBy,
                  HubspotSDK::Crm::PublicTimePointOperation,
                  HubspotSDK::Crm::PublicRangedTimeOperation
                )
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
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The type of the filter branch (UNIFIED_EVENTS).
        module FilterBranchType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNIFIED_EVENTS =
            T.let(
              :UNIFIED_EVENTS,
              HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::TaggedSymbol
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
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Filter::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Defines the operation to be applied within the filter branch (HAS_COMPLETED,
        # HAS_NOT_COMPLETED).
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HAS_COMPLETED =
            T.let(
              :HAS_COMPLETED,
              HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
            )
          HAS_NOT_COMPLETED =
            T.let(
              :HAS_NOT_COMPLETED,
              HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the criteria for refining the filter by coalescing.
        module CoalescingRefineBy
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAllHistoryRefineBy,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module PruningRefineBy
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAllHistoryRefineBy,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::PruningRefineBy::Variants
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
