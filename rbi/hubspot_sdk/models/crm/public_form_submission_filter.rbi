# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicFormSubmissionFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicFormSubmissionFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates the type of filter (FORM_SUBMISSION).
        sig do
          returns(
            HubspotSDK::Crm::PublicFormSubmissionFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        # Specifies the operation to be performed (FILLED_OUT, NOT_FILLED_OUT).
        sig do
          returns(
            HubspotSDK::Crm::PublicFormSubmissionFilter::Operator::OrSymbol
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

        # The ID of the form used in the filter.
        sig { returns(T.nilable(String)) }
        attr_reader :form_id

        sig { params(form_id: String).void }
        attr_writer :form_id

        # Specifies the criteria for refining the filter by pruning.
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
            filter_type:
              HubspotSDK::Crm::PublicFormSubmissionFilter::FilterType::OrSymbol,
            operator:
              HubspotSDK::Crm::PublicFormSubmissionFilter::Operator::OrSymbol,
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
            form_id: String,
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
          # Indicates the type of filter (FORM_SUBMISSION).
          filter_type:,
          # Specifies the operation to be performed (FILLED_OUT, NOT_FILLED_OUT).
          operator:,
          # Specifies the criteria for refining the filter by coalescing.
          coalescing_refine_by: nil,
          # The ID of the form used in the filter.
          form_id: nil,
          # Specifies the criteria for refining the filter by pruning.
          pruning_refine_by: nil
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubspotSDK::Crm::PublicFormSubmissionFilter::FilterType::OrSymbol,
              operator:
                HubspotSDK::Crm::PublicFormSubmissionFilter::Operator::OrSymbol,
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
              form_id: String,
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

        # Indicates the type of filter (FORM_SUBMISSION).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicFormSubmissionFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FORM_SUBMISSION =
            T.let(
              :FORM_SUBMISSION,
              HubspotSDK::Crm::PublicFormSubmissionFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicFormSubmissionFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the operation to be performed (FILLED_OUT, NOT_FILLED_OUT).
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicFormSubmissionFilter::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FILLED_OUT =
            T.let(
              :FILLED_OUT,
              HubspotSDK::Crm::PublicFormSubmissionFilter::Operator::TaggedSymbol
            )
          NOT_FILLED_OUT =
            T.let(
              :NOT_FILLED_OUT,
              HubspotSDK::Crm::PublicFormSubmissionFilter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicFormSubmissionFilter::Operator::TaggedSymbol
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
                HubspotSDK::Crm::PublicFormSubmissionFilter::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Specifies the criteria for refining the filter by pruning.
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
                HubspotSDK::Crm::PublicFormSubmissionFilter::PruningRefineBy::Variants
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
