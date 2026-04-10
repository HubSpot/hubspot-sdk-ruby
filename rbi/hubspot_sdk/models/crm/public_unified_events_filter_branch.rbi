# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicUnifiedEventsFilterBranch < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The identifier for the type of event associated with the filter branch.
        sig { returns(String) }
        attr_accessor :event_type_id

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

        # The logical operator used to combine filters within the branch (AND).
        sig { returns(String) }
        attr_accessor :filter_branch_operator

        # The type of the filter branch (UNIFIED_EVENTS).
        sig do
          returns(
            HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol
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

        # Defines the operation to be applied within the filter branch (HAS_COMPLETED,
        # HAS_NOT_COMPLETED).
        sig do
          returns(
            HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::OrSymbol
          )
        end
        attr_accessor :operator

        # Specifies the criteria for refining the filter by coalescing.
        sig do
          returns(
            T.nilable(
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy,
                HubSpotSDK::Crm::PublicTimePointOperation,
                HubSpotSDK::Crm::PublicRangedTimeOperation
              )
            )
          )
        end
        attr_reader :coalescing_refine_by

        sig do
          params(
            coalescing_refine_by:
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubSpotSDK::Crm::PublicTimePointOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OrHash
              )
          ).void
        end
        attr_writer :coalescing_refine_by

        sig do
          returns(
            T.nilable(
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy,
                HubSpotSDK::Crm::PublicTimePointOperation,
                HubSpotSDK::Crm::PublicRangedTimeOperation
              )
            )
          )
        end
        attr_reader :pruning_refine_by

        sig do
          params(
            pruning_refine_by:
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubSpotSDK::Crm::PublicTimePointOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OrHash
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
              HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol,
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
              ],
            operator:
              HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::OrSymbol,
            coalescing_refine_by:
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubSpotSDK::Crm::PublicTimePointOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OrHash
              ),
            pruning_refine_by:
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubSpotSDK::Crm::PublicTimePointOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OrHash
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
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol,
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
                ],
              operator:
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::OrSymbol,
              coalescing_refine_by:
                T.any(
                  HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
                  HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
                  HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                  HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAllHistoryRefineBy,
                  HubSpotSDK::Crm::PublicTimePointOperation,
                  HubSpotSDK::Crm::PublicRangedTimeOperation
                ),
              pruning_refine_by:
                T.any(
                  HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
                  HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
                  HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                  HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAllHistoryRefineBy,
                  HubSpotSDK::Crm::PublicTimePointOperation,
                  HubSpotSDK::Crm::PublicRangedTimeOperation
                )
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
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # The type of the filter branch (UNIFIED_EVENTS).
        module FilterBranchType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNIFIED_EVENTS =
            T.let(
              :UNIFIED_EVENTS,
              HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::FilterBranchType::TaggedSymbol
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
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Filter::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Defines the operation to be applied within the filter branch (HAS_COMPLETED,
        # HAS_NOT_COMPLETED).
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HAS_COMPLETED =
            T.let(
              :HAS_COMPLETED,
              HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
            )
          HAS_NOT_COMPLETED =
            T.let(
              :HAS_NOT_COMPLETED,
              HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the criteria for refining the filter by coalescing.
        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy,
                HubSpotSDK::Crm::PublicTimePointOperation,
                HubSpotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module PruningRefineBy
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy,
                HubSpotSDK::Crm::PublicTimePointOperation,
                HubSpotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::PruningRefineBy::Variants
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
