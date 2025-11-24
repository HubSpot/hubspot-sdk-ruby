# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class AllPropertyTypesOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute coalescing_refine_by
        #
        #   @return [HubspotSDK::Models::Events::NumOccurrencesRefineBy, HubspotSDK::Models::Events::SetOccurrencesRefineBy]
        required :coalescing_refine_by,
                 union: -> { HubspotSDK::Events::AllPropertyTypesOperation::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AllPropertyTypesOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::AllPropertyTypesOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AllPropertyTypesOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::AllPropertyTypesOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute pruning_refine_by
        #
        #   @return [HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::AllHistoryRefineBy, HubspotSDK::Models::Events::TimePointOperation, HubspotSDK::Models::Events::RangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubspotSDK::Events::AllPropertyTypesOperation::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(coalescing_refine_by:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, default_value: nil, pruning_refine_by: nil)
        #   @param coalescing_refine_by [HubspotSDK::Models::Events::NumOccurrencesRefineBy, HubspotSDK::Models::Events::SetOccurrencesRefineBy]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::AllPropertyTypesOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::AllPropertyTypesOperation::PropertyType]
        #   @param default_value [String]
        #   @param pruning_refine_by [HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::AllHistoryRefineBy, HubspotSDK::Models::Events::TimePointOperation, HubspotSDK::Models::Events::RangedTimeOperation]

        # @see HubspotSDK::Models::Events::AllPropertyTypesOperation#coalescing_refine_by
        module CoalescingRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Events::NumOccurrencesRefineBy }

          variant -> { HubspotSDK::Events::SetOccurrencesRefineBy }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Events::NumOccurrencesRefineBy, HubspotSDK::Models::Events::SetOccurrencesRefineBy)]
        end

        # @see HubspotSDK::Models::Events::AllPropertyTypesOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_BLANK = :IS_BLANK
          IS_KNOWN = :IS_KNOWN
          IS_NOT_BLANK = :IS_NOT_BLANK
          IS_UNKNOWN = :IS_UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::AllPropertyTypesOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          ALLTYPES = :alltypes

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::AllPropertyTypesOperation#pruning_refine_by
        module PruningRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Events::RelativeComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Events::RelativeRangedTimestampRefineBy }

          variant -> { HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Events::AbsoluteRangedTimestampRefineBy }

          variant -> { HubspotSDK::Events::AllHistoryRefineBy }

          variant -> { HubspotSDK::Events::TimePointOperation }

          variant -> { HubspotSDK::Events::RangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::AllHistoryRefineBy, HubspotSDK::Models::Events::TimePointOperation, HubspotSDK::Models::Events::RangedTimeOperation)]
        end
      end
    end
  end
end
