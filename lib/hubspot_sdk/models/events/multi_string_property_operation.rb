# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class MultiStringPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute coalescing_refine_by
        #
        #   @return [HubSpotSDK::Models::Events::NumOccurrencesRefineBy, HubSpotSDK::Models::Events::SetOccurrencesRefineBy]
        required :coalescing_refine_by,
                 union: -> { HubSpotSDK::Events::MultiStringPropertyOperation::CoalescingRefineBy },
                 api_name: :coalescingRefineBy

        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::MultiStringPropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::MultiStringPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::MultiStringPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::MultiStringPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute values
        #
        #   @return [Array<String>]
        required :values, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute pruning_refine_by
        #
        #   @return [HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy, HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Events::AllHistoryRefineBy, HubSpotSDK::Models::Events::TimePointOperation, HubSpotSDK::Models::Events::RangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubSpotSDK::Events::MultiStringPropertyOperation::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(coalescing_refine_by:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, values:, default_value: nil, pruning_refine_by: nil, render_spec: nil)
        #   @param coalescing_refine_by [HubSpotSDK::Models::Events::NumOccurrencesRefineBy, HubSpotSDK::Models::Events::SetOccurrencesRefineBy]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::MultiStringPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::MultiStringPropertyOperation::PropertyType]
        #   @param values [Array<String>]
        #   @param default_value [String]
        #   @param pruning_refine_by [HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy, HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Events::AllHistoryRefineBy, HubSpotSDK::Models::Events::TimePointOperation, HubSpotSDK::Models::Events::RangedTimeOperation]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::MultiStringPropertyOperation#coalescing_refine_by
        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Events::NumOccurrencesRefineBy }

          variant -> { HubSpotSDK::Events::SetOccurrencesRefineBy }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Events::NumOccurrencesRefineBy, HubSpotSDK::Models::Events::SetOccurrencesRefineBy)]
        end

        # @see HubSpotSDK::Models::Events::MultiStringPropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          CONTAINS = :CONTAINS
          CONTAINS_EXACTLY = :CONTAINS_EXACTLY
          DOES_NOT_CONTAIN = :DOES_NOT_CONTAIN
          DOES_NOT_CONTAIN_EXACTLY = :DOES_NOT_CONTAIN_EXACTLY
          ENDS_WITH = :ENDS_WITH
          IS_EQUAL_TO = :IS_EQUAL_TO
          IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
          STARTS_WITH = :STARTS_WITH

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::MultiStringPropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          MULTISTRING = :multistring

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::MultiStringPropertyOperation#pruning_refine_by
        module PruningRefineBy
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Events::RelativeComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Events::RelativeRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy }

          variant -> { HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy }

          variant -> { HubSpotSDK::Events::AllHistoryRefineBy }

          variant -> { HubSpotSDK::Events::TimePointOperation }

          variant -> { HubSpotSDK::Events::RangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Events::RelativeComparativeTimestampRefineBy, HubSpotSDK::Models::Events::RelativeRangedTimestampRefineBy, HubSpotSDK::Models::Events::AbsoluteComparativeTimestampRefineBy, HubSpotSDK::Models::Events::AbsoluteRangedTimestampRefineBy, HubSpotSDK::Models::Events::AllHistoryRefineBy, HubSpotSDK::Models::Events::TimePointOperation, HubSpotSDK::Models::Events::RangedTimeOperation)]
        end
      end
    end
  end
end
