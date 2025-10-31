# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicComparativeDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
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
      #   @return [Symbol, HubspotSDK::Models::PublicComparativeDatePropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicComparativeDatePropertyOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute default_comparison_value
      #
      #   @return [String, nil]
      optional :default_comparison_value, String, api_name: :defaultComparisonValue

      # @!method initialize(comparison_property_name:, include_objects_with_no_value_set:, operation_type:, operator:, default_comparison_value: nil)
      #   @param comparison_property_name [String]
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicComparativeDatePropertyOperation::OperationType]
      #   @param operator [String]
      #   @param default_comparison_value [String]

      # @see HubspotSDK::Models::PublicComparativeDatePropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        COMPARATIVE_DATE = :COMPARATIVE_DATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
