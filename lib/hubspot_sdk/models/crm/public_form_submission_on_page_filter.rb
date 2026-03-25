# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicFormSubmissionOnPageFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates the type of filter (FORM_SUBMISSION_ON_PAGE).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicFormSubmissionOnPageFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Specifies the operation to be applied (FILLED_OUT, NOT_FILLED_OUT).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter::Operator]
        required :operator, enum: -> { HubspotSDK::Crm::PublicFormSubmissionOnPageFilter::Operator }

        # @!attribute page_id
        #   The ID of the page where the form submission occurred.
        #
        #   @return [String]
        required :page_id, String, api_name: :pageId

        # @!attribute coalescing_refine_by
        #   Defines the criteria for refining the filter by coalescing.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :coalescing_refine_by,
                 union: -> { HubspotSDK::Crm::PublicFormSubmissionOnPageFilter::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute form_id
        #   The ID of the form associated with the submission filter.
        #
        #   @return [String, nil]
        optional :form_id, String, api_name: :formId

        # @!attribute pruning_refine_by
        #   Specifies the criteria for refining the filter by pruning.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubspotSDK::Crm::PublicFormSubmissionOnPageFilter::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(filter_type:, operator:, page_id:, coalescing_refine_by: nil, form_id: nil, pruning_refine_by: nil)
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter::FilterType] Indicates the type of filter (FORM_SUBMISSION_ON_PAGE).
        #
        #   @param operator [Symbol, HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter::Operator] Specifies the operation to be applied (FILLED_OUT, NOT_FILLED_OUT).
        #
        #   @param page_id [String] The ID of the page where the form submission occurred.
        #
        #   @param coalescing_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Defines the criteria for refining the filter by coalescing.
        #
        #   @param form_id [String] The ID of the form associated with the submission filter.
        #
        #   @param pruning_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by pruning.

        # Indicates the type of filter (FORM_SUBMISSION_ON_PAGE).
        #
        # @see HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          FORM_SUBMISSION_ON_PAGE = :FORM_SUBMISSION_ON_PAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the operation to be applied (FILLED_OUT, NOT_FILLED_OUT).
        #
        # @see HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          FILLED_OUT = :FILLED_OUT
          NOT_FILLED_OUT = :NOT_FILLED_OUT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the criteria for refining the filter by coalescing.
        #
        # @see HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter#coalescing_refine_by
        module CoalescingRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end

        # Specifies the criteria for refining the filter by pruning.
        #
        # @see HubspotSDK::Models::Crm::PublicFormSubmissionOnPageFilter#pruning_refine_by
        module PruningRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
