# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicUnifiedEventsFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicUnifiedEventsFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::PublicEventFilterMetadata]) }
        attr_accessor :filter_lines

        # Indicates the type of filter being applied (UNIFIED_EVENTS).
        sig do
          returns(
            HubSpotSDK::Crm::PublicUnifiedEventsFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

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

        # The identifier for the type of event in the unified events filter.
        sig { returns(T.nilable(String)) }
        attr_reader :event_type_id

        sig { params(event_type_id: String).void }
        attr_writer :event_type_id

        # Specifies the criteria for refining the filter by pruning.
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
            filter_lines:
              T::Array[HubSpotSDK::Crm::PublicEventFilterMetadata::OrHash],
            filter_type:
              HubSpotSDK::Crm::PublicUnifiedEventsFilter::FilterType::OrSymbol,
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
            event_type_id: String,
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
          filter_lines:,
          # Indicates the type of filter being applied (UNIFIED_EVENTS).
          filter_type:,
          # Specifies the criteria for refining the filter by coalescing.
          coalescing_refine_by: nil,
          # The identifier for the type of event in the unified events filter.
          event_type_id: nil,
          # Specifies the criteria for refining the filter by pruning.
          pruning_refine_by: nil
        )
        end

        sig do
          override.returns(
            {
              filter_lines:
                T::Array[HubSpotSDK::Crm::PublicEventFilterMetadata],
              filter_type:
                HubSpotSDK::Crm::PublicUnifiedEventsFilter::FilterType::OrSymbol,
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
              event_type_id: String,
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

        # Indicates the type of filter being applied (UNIFIED_EVENTS).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicUnifiedEventsFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNIFIED_EVENTS =
            T.let(
              :UNIFIED_EVENTS,
              HubSpotSDK::Crm::PublicUnifiedEventsFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicUnifiedEventsFilter::FilterType::TaggedSymbol
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
                HubSpotSDK::Crm::PublicUnifiedEventsFilter::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Specifies the criteria for refining the filter by pruning.
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
                HubSpotSDK::Crm::PublicUnifiedEventsFilter::PruningRefineBy::Variants
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
