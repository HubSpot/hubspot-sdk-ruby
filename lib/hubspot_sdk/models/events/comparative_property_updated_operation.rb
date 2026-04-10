# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class ComparativePropertyUpdatedOperation < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::ComparativePropertyUpdatedOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::ComparativePropertyUpdatedOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute default_comparison_value
        #
        #   @return [String, nil]
        optional :default_comparison_value, String, api_name: :defaultComparisonValue

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(comparison_property_name:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, default_comparison_value: nil, default_value: nil, render_spec: nil)
        #   @param comparison_property_name [String]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation::PropertyType]
        #   @param default_comparison_value [String]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_AFTER = :IS_AFTER
          IS_BEFORE = :IS_BEFORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::ComparativePropertyUpdatedOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          PROPERTY_UPDATED_COMPARATIVE = :"property-updated-comparative"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
