# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class MultiStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute coalescing_refine_by
        #
        #   @return [HubspotSDK::Models::Events::NumOccurrencesRefineBy, HubspotSDK::Models::Events::SetOccurrencesRefineBy]
        required :coalescing_refine_by,
                 union: -> { HubspotSDK::Events::MultiStringPropertyOperation::CoalescingRefineBy },
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
        #   @return [Symbol, HubspotSDK::Models::Events::MultiStringPropertyOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::MultiStringPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::MultiStringPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::MultiStringPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute values
        #
        #   @return [Array<String>]
        required :values, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute pruning_refine_by
        #
        #   @return [HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::AllHistoryRefineBy, HubspotSDK::Models::Events::TimePointOperation, HubspotSDK::Models::Events::RangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubspotSDK::Events::MultiStringPropertyOperation::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(coalescing_refine_by:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, values:, default_value: nil, pruning_refine_by: nil)
        #   @param coalescing_refine_by [HubspotSDK::Models::Events::NumOccurrencesRefineBy, HubspotSDK::Models::Events::SetOccurrencesRefineBy]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::MultiStringPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::MultiStringPropertyOperation::PropertyType]
        #   @param values [Array<String>]
        #   @param default_value [String]
        #   @param pruning_refine_by [HubspotSDK::Models::Events::RelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::RelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::AbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::AllHistoryRefineBy, HubspotSDK::Models::Events::TimePointOperation, HubspotSDK::Models::Events::RangedTimeOperation]

        # @see HubspotSDK::Models::Events::MultiStringPropertyOperation#coalescing_refine_by
        module CoalescingRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Events::NumOccurrencesRefineBy }

          variant -> { HubspotSDK::Events::SetOccurrencesRefineBy }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Events::NumOccurrencesRefineBy, HubspotSDK::Models::Events::SetOccurrencesRefineBy)]
        end

        # @see HubspotSDK::Models::Events::MultiStringPropertyOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_EQUAL_TO = :IS_EQUAL_TO
          IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
          CONTAINS = :CONTAINS
          DOES_NOT_CONTAIN = :DOES_NOT_CONTAIN
          STARTS_WITH = :STARTS_WITH
          ENDS_WITH = :ENDS_WITH

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::MultiStringPropertyOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          MULTISTRING = :multistring

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::MultiStringPropertyOperation#pruning_refine_by
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
