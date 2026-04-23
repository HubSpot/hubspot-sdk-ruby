# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class RollupExpression < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute association_types
        #
        #   @return [Array<HubSpotSDK::Models::AssociationSpec>]
        required :association_types,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::AssociationSpec] },
                 api_name: :associationTypes

        # @!attribute rollup_operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::RollupExpression::RollupOperator]
        required :rollup_operator,
                 enum: -> { HubSpotSDK::Cms::RollupExpression::RollupOperator },
                 api_name: :rollupOperator

        # @!attribute source_object_type_id
        #
        #   @return [String]
        required :source_object_type_id, String, api_name: :sourceObjectTypeId

        # @!attribute source_property_name
        #
        #   @return [String]
        required :source_property_name, String, api_name: :sourcePropertyName

        # @!attribute conditional_expression
        #
        #   @return [Object, nil]
        optional :conditional_expression,
                 HubSpotSDK::Internal::Type::Unknown,
                 api_name: :conditionalExpression

        # @!attribute conditional_formula
        #
        #   @return [String, nil]
        optional :conditional_formula, String, api_name: :conditionalFormula

        # @!attribute empty_rollup_value
        #
        #   @return [String, nil]
        optional :empty_rollup_value, String, api_name: :emptyRollupValue

        # @!attribute source_compare_by_property_name
        #
        #   @return [String, nil]
        optional :source_compare_by_property_name, String, api_name: :sourceCompareByPropertyName

        # @!method initialize(association_types:, rollup_operator:, source_object_type_id:, source_property_name:, conditional_expression: nil, conditional_formula: nil, empty_rollup_value: nil, source_compare_by_property_name: nil)
        #   @param association_types [Array<HubSpotSDK::Models::AssociationSpec>]
        #   @param rollup_operator [Symbol, HubSpotSDK::Models::Cms::RollupExpression::RollupOperator]
        #   @param source_object_type_id [String]
        #   @param source_property_name [String]
        #   @param conditional_expression [Object]
        #   @param conditional_formula [String]
        #   @param empty_rollup_value [String]
        #   @param source_compare_by_property_name [String]

        # @see HubSpotSDK::Models::Cms::RollupExpression#rollup_operator
        module RollupOperator
          extend HubSpotSDK::Internal::Type::Enum

          AVERAGE = :AVERAGE
          COUNT = :COUNT
          EARLIEST_VALUE = :EARLIEST_VALUE
          LATEST_VALUE = :LATEST_VALUE
          MAX = :MAX
          MAX_BY = :MAX_BY
          MIN = :MIN
          MIN_BY = :MIN_BY
          REFERENCED_ID_SET = :REFERENCED_ID_SET
          REFERENCED_STRING_SET = :REFERENCED_STRING_SET
          REFERENCED_STRING_SET_INTERSECTION = :REFERENCED_STRING_SET_INTERSECTION
          SUM = :SUM
          SYNC_MAX_BY = :SYNC_MAX_BY
          SYNC_MIN_BY = :SYNC_MIN_BY
          SYNC_VALUE = :SYNC_VALUE
          UNKNOWN_ROLLUP_OPERATOR = :UNKNOWN_ROLLUP_OPERATOR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
