# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicEventAnalyticsFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicEventAnalyticsFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the event to be used in the filter.
        sig { returns(String) }
        attr_accessor :event_id

        # Indicates the type of filter being applied (EVENT).
        sig do
          returns(
            HubspotSDK::Crm::PublicEventAnalyticsFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        # Defines the operation to be applied within the event filter (HAS_EVENT,
        # NOT_HAS_EVENT).
        sig { returns(String) }
        attr_accessor :operator

        # Specifies the criteria for refining the event filter by coalescing.
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

        # Specifies the criteria for refining the event filter by pruning.
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
            event_id: String,
            filter_type:
              HubspotSDK::Crm::PublicEventAnalyticsFilter::FilterType::OrSymbol,
            operator: String,
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
          # The ID of the event to be used in the filter.
          event_id:,
          # Indicates the type of filter being applied (EVENT).
          filter_type:,
          # Defines the operation to be applied within the event filter (HAS_EVENT,
          # NOT_HAS_EVENT).
          operator:,
          # Specifies the criteria for refining the event filter by coalescing.
          coalescing_refine_by: nil,
          # Specifies the criteria for refining the event filter by pruning.
          pruning_refine_by: nil
        )
        end

        sig do
          override.returns(
            {
              event_id: String,
              filter_type:
                HubspotSDK::Crm::PublicEventAnalyticsFilter::FilterType::OrSymbol,
              operator: String,
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

        # Indicates the type of filter being applied (EVENT).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicEventAnalyticsFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :EVENT,
              HubspotSDK::Crm::PublicEventAnalyticsFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicEventAnalyticsFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the criteria for refining the event filter by coalescing.
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
                HubspotSDK::Crm::PublicEventAnalyticsFilter::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Specifies the criteria for refining the event filter by pruning.
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
                HubspotSDK::Crm::PublicEventAnalyticsFilter::PruningRefineBy::Variants
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
