# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class RollupExpression < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_types
        #
        #   @return [Array<HubspotSDK::Models::AssociationSpec>]
        required :association_types,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationSpec] },
                 api_name: :associationTypes

        # @!attribute rollup_operator
        #
        #   @return [String]
        required :rollup_operator, String, api_name: :rollupOperator

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
        #   @return [Hash{Symbol=>Object}, nil]
        optional :conditional_expression,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
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
        #   @param association_types [Array<HubspotSDK::Models::AssociationSpec>]
        #   @param rollup_operator [String]
        #   @param source_object_type_id [String]
        #   @param source_property_name [String]
        #   @param conditional_expression [Hash{Symbol=>Object}]
        #   @param conditional_formula [String]
        #   @param empty_rollup_value [String]
        #   @param source_compare_by_property_name [String]
      end
    end
  end
end
