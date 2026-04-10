# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicFormSubmissionOnPageFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates the type of filter (FORM_SUBMISSION_ON_PAGE).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Specifies the operation to be applied (FILLED_OUT, NOT_FILLED_OUT).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter::Operator]
        required :operator, enum: -> { HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter::Operator }

        # @!attribute page_id
        #   The ID of the page where the form submission occurred.
        #
        #   @return [String]
        required :page_id, String, api_name: :pageId

        # @!attribute coalescing_refine_by
        #   Defines the criteria for refining the filter by coalescing.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :coalescing_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute form_id
        #   The ID of the form associated with the submission filter.
        #
        #   @return [String, nil]
        optional :form_id, String, api_name: :formId

        # @!attribute pruning_refine_by
        #   Specifies the criteria for refining the filter by pruning.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubSpotSDK::Crm::PublicFormSubmissionOnPageFilter::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(filter_type:, operator:, page_id:, coalescing_refine_by: nil, form_id: nil, pruning_refine_by: nil)
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter::FilterType] Indicates the type of filter (FORM_SUBMISSION_ON_PAGE).
        #
        #   @param operator [Symbol, HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter::Operator] Specifies the operation to be applied (FILLED_OUT, NOT_FILLED_OUT).
        #
        #   @param page_id [String] The ID of the page where the form submission occurred.
        #
        #   @param coalescing_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Defines the criteria for refining the filter by coalescing.
        #
        #   @param form_id [String] The ID of the form associated with the submission filter.
        #
        #   @param pruning_refine_by [HubSpotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubSpotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Crm::PublicAllHistoryRefineBy, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by pruning.

        # Indicates the type of filter (FORM_SUBMISSION_ON_PAGE).
        #
        # @see HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          FORM_SUBMISSION_ON_PAGE = :FORM_SUBMISSION_ON_PAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the operation to be applied (FILLED_OUT, NOT_FILLED_OUT).
        #
        # @see HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          FILLED_OUT = :FILLED_OUT
          NOT_FILLED_OUT = :NOT_FILLED_OUT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the criteria for refining the filter by coalescing.
        #
        # @see HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter#coalescing_refine_by
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
        # @see HubSpotSDK::Models::Crm::PublicFormSubmissionOnPageFilter#pruning_refine_by
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
