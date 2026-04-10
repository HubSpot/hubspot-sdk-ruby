# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class ComparativeBoolPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute comparison_property_name
        #
        #   @return [String]
        required :comparison_property_name, String, api_name: :comparisonPropertyName

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
        #   @return [Symbol, HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::ComparativeBoolPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::ComparativeBoolPropertyOperation::PropertyType },
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
        #   @param operator [Symbol, HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation::PropertyType]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_EQUAL_TO = :IS_EQUAL_TO
          IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::ComparativeBoolPropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          BOOL_COMPARATIVE = :"bool-comparative"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
