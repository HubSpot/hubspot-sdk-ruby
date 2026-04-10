# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicFormSubmissionFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates the type of filter (FORM_SUBMISSION).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicFormSubmissionFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Specifies the operation to be performed (FILLED_OUT, NOT_FILLED_OUT).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter::Operator]
        required :operator, enum: -> { HubSpotSDK::Crm::PublicFormSubmissionFilter::Operator }

        # @!attribute coalescing_refine_by
        #   Specifies the criteria for refining the filter by coalescing.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :coalescing_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicFormSubmissionFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute form_id
        #   The ID of the form used in the filter.
        #
        #   @return [String, nil]
        optional :form_id, String, api_name: :formId

        # @!attribute pruning_refine_by
        #   Specifies the criteria for refining the filter by pruning.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicFormSubmissionFilter::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(filter_type:, operator:, coalescing_refine_by: nil, form_id: nil, pruning_refine_by: nil)
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter::FilterType] Indicates the type of filter (FORM_SUBMISSION).
        #
        #   @param operator [Symbol, HubSpotSDK::Models::Crm::PublicFormSubmissionFilter::Operator] Specifies the operation to be performed (FILLED_OUT, NOT_FILLED_OUT).
        #
        #   @param coalescing_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by coalescing.
        #
        #   @param form_id [String] The ID of the form used in the filter.
        #
        #   @param pruning_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by pruning.

        # Indicates the type of filter (FORM_SUBMISSION).
        #
        # @see HubSpotSDK::Models::Crm::PublicFormSubmissionFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          FORM_SUBMISSION = :FORM_SUBMISSION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the operation to be performed (FILLED_OUT, NOT_FILLED_OUT).
        #
        # @see HubSpotSDK::Models::Crm::PublicFormSubmissionFilter#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          FILLED_OUT = :FILLED_OUT
          NOT_FILLED_OUT = :NOT_FILLED_OUT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the criteria for refining the filter by coalescing.
        #
        # @see HubSpotSDK::Models::Crm::PublicFormSubmissionFilter#coalescing_refine_by
        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end

        # Specifies the criteria for refining the filter by pruning.
        #
        # @see HubSpotSDK::Models::Crm::PublicFormSubmissionFilter#pruning_refine_by
        module PruningRefineBy
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
