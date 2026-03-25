# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class ComparativeNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute comparison_property_name
        #
        #   @return [String]
        required :comparison_property_name, String, api_name: :comparisonPropertyName

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
        #   @return [Symbol, HubspotSDK::Models::Events::ComparativeNumberPropertyOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::ComparativeNumberPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::ComparativeNumberPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::ComparativeNumberPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(comparison_property_name:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, default_value: nil, render_spec: nil)
        #   @param comparison_property_name [String]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::ComparativeNumberPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::ComparativeNumberPropertyOperation::PropertyType]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubspotSDK::Models::Events::ComparativeNumberPropertyOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_EQUAL_TO = :IS_EQUAL_TO
          IS_GREATER_THAN = :IS_GREATER_THAN
          IS_GREATER_THAN_OR_EQUAL_TO = :IS_GREATER_THAN_OR_EQUAL_TO
          IS_LESS_THAN = :IS_LESS_THAN
          IS_LESS_THAN_OR_EQUAL_TO = :IS_LESS_THAN_OR_EQUAL_TO
          IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::ComparativeNumberPropertyOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          NUMBER_COMPARATIVE = :"number-comparative"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
