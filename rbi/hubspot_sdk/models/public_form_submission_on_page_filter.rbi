# typed: strong

module HubspotSDK
  module Models
    class PublicFormSubmissionOnPageFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicFormSubmissionOnPageFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          HubspotSDK::PublicFormSubmissionOnPageFilter::FilterType::OrSymbol
        )
      end
      attr_accessor :filter_type

      sig do
        returns(
          HubspotSDK::PublicFormSubmissionOnPageFilter::Operator::OrSymbol
        )
      end
      attr_accessor :operator

      sig { returns(String) }
      attr_accessor :page_id

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

      sig { returns(T.nilable(String)) }
      attr_reader :form_id

      sig { params(form_id: String).void }
      attr_writer :form_id

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
      attr_reader :pruning_refine_by

      sig do
        params(
          pruning_refine_by:
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
      attr_writer :pruning_refine_by

      sig do
        params(
          filter_type:
            HubspotSDK::PublicFormSubmissionOnPageFilter::FilterType::OrSymbol,
          operator:
            HubspotSDK::PublicFormSubmissionOnPageFilter::Operator::OrSymbol,
          page_id: String,
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
            ),
          form_id: String,
          pruning_refine_by:
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
        filter_type:,
        operator:,
        page_id:,
        coalescing_refine_by: nil,
        form_id: nil,
        pruning_refine_by: nil
      )
      end

      sig do
        override.returns(
          {
            filter_type:
              HubspotSDK::PublicFormSubmissionOnPageFilter::FilterType::OrSymbol,
            operator:
              HubspotSDK::PublicFormSubmissionOnPageFilter::Operator::OrSymbol,
            page_id: String,
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
              ),
            form_id: String,
            pruning_refine_by:
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

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicFormSubmissionOnPageFilter::FilterType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FORM_SUBMISSION_ON_PAGE =
          T.let(
            :FORM_SUBMISSION_ON_PAGE,
            HubspotSDK::PublicFormSubmissionOnPageFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicFormSubmissionOnPageFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Operator
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicFormSubmissionOnPageFilter::Operator
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FILLED_OUT =
          T.let(
            :FILLED_OUT,
            HubspotSDK::PublicFormSubmissionOnPageFilter::Operator::TaggedSymbol
          )
        NOT_FILLED_OUT =
          T.let(
            :NOT_FILLED_OUT,
            HubspotSDK::PublicFormSubmissionOnPageFilter::Operator::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicFormSubmissionOnPageFilter::Operator::TaggedSymbol
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
              HubspotSDK::PublicFormSubmissionOnPageFilter::CoalescingRefineBy::Variants
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
              HubspotSDK::PublicFormSubmissionOnPageFilter::PruningRefineBy::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
