# typed: strong

module HubspotSDK
  module Models
    class PublicUnifiedEventsFilterBranch < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicUnifiedEventsFilterBranch,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :event_type_id

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
          HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol
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
        returns(HubspotSDK::PublicUnifiedEventsFilterBranch::Operator::OrSymbol)
      end
      attr_accessor :operator

      sig do
        returns(
          T.nilable(
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy,
              HubspotSDK::PublicSetOccurrencesRefineBy,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
              HubspotSDK::PublicAllHistoryRefineBy,
              HubspotSDK::PublicTimePointOperation,
              HubspotSDK::PublicRangedTimeOperation
            )
          )
        )
      end
      attr_reader :coalescing_refine_by

      sig do
        params(
          coalescing_refine_by:
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicSetOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAllHistoryRefineBy::OrHash,
              HubspotSDK::PublicTimePointOperation::OrHash,
              HubspotSDK::PublicRangedTimeOperation::OrHash
            )
        ).void
      end
      attr_writer :coalescing_refine_by

      sig do
        params(
          event_type_id: String,
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
            HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol,
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
          operator:
            HubspotSDK::PublicUnifiedEventsFilterBranch::Operator::OrSymbol,
          coalescing_refine_by:
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicSetOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAllHistoryRefineBy::OrHash,
              HubspotSDK::PublicTimePointOperation::OrHash,
              HubspotSDK::PublicRangedTimeOperation::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        event_type_id:,
        filter_branches:,
        filter_branch_operator:,
        filter_branch_type:,
        filters:,
        operator:,
        coalescing_refine_by: nil
      )
      end

      sig do
        override.returns(
          {
            event_type_id: String,
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
              HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranchType::OrSymbol,
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
            operator:
              HubspotSDK::PublicUnifiedEventsFilterBranch::Operator::OrSymbol,
            coalescing_refine_by:
              T.any(
                HubspotSDK::PublicNumOccurrencesRefineBy,
                HubspotSDK::PublicSetOccurrencesRefineBy,
                HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::PublicAllHistoryRefineBy,
                HubspotSDK::PublicTimePointOperation,
                HubspotSDK::PublicRangedTimeOperation
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
              HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranch::Variants
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
              HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranchType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNIFIED_EVENTS =
          T.let(
            :UNIFIED_EVENTS,
            HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranchType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicUnifiedEventsFilterBranch::FilterBranchType::TaggedSymbol
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
              HubspotSDK::PublicUnifiedEventsFilterBranch::Filter::Variants
            ]
          )
        end
        def self.variants
        end
      end

      module Operator
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicUnifiedEventsFilterBranch::Operator)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HAS_COMPLETED =
          T.let(
            :HAS_COMPLETED,
            HubspotSDK::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
          )
        HAS_NOT_COMPLETED =
          T.let(
            :HAS_NOT_COMPLETED,
            HubspotSDK::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicUnifiedEventsFilterBranch::Operator::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module CoalescingRefineBy
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy,
              HubspotSDK::PublicSetOccurrencesRefineBy,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
              HubspotSDK::PublicAllHistoryRefineBy,
              HubspotSDK::PublicTimePointOperation,
              HubspotSDK::PublicRangedTimeOperation
            )
          end

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicUnifiedEventsFilterBranch::CoalescingRefineBy::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
