# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class ComparativeDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubspotSDK::Models::Events::ComparativeDatePropertyOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::ComparativeDatePropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::ComparativeDatePropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::ComparativeDatePropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute default_comparison_value
        #
        #   @return [String, nil]
        optional :default_comparison_value, String, api_name: :defaultComparisonValue

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!method initialize(comparison_property_name:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, default_comparison_value: nil, default_value: nil)
        #   @param comparison_property_name [String]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::ComparativeDatePropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::ComparativeDatePropertyOperation::PropertyType]
        #   @param default_comparison_value [String]
        #   @param default_value [String]

        # @see HubspotSDK::Models::Events::ComparativeDatePropertyOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_BEFORE = :IS_BEFORE
          IS_AFTER = :IS_AFTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::ComparativeDatePropertyOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          DATETIME_COMPARATIVE = :"datetime-comparative"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
