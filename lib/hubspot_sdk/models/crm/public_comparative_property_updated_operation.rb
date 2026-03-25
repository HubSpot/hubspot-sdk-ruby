# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicComparativePropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute comparison_property_name
        #   The name of the property to compare against in the operation.
        #
        #   @return [String]
        required :comparison_property_name, String, api_name: :comparisonPropertyName

        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   Specifies the type of operation (COMPARATIVE_PROPERTY_UPDATED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation::OperationType]
        required :operation_type,
                 enum: -> { HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied, such as comparison operators (IS_BEFORE,
        #   IS_AFTER).
        #
        #   @return [String]
        required :operator, String

        # @!attribute default_comparison_value
        #   The default value used for comparison if the actual comparison property value is
        #   not set.
        #
        #   @return [String, nil]
        optional :default_comparison_value, String, api_name: :defaultComparisonValue

        # @!method initialize(comparison_property_name:, include_objects_with_no_value_set:, operation_type:, operator:, default_comparison_value: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation} for more
        #   details.
        #
        #   @param comparison_property_name [String] The name of the property to compare against in the operation.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param operation_type [Symbol, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation::OperationType] Specifies the type of operation (COMPARATIVE_PROPERTY_UPDATED).
        #
        #   @param operator [String] Defines the operation to be applied, such as comparison operators (IS_BEFORE, IS
        #
        #   @param default_comparison_value [String] The default value used for comparison if the actual comparison property value is

        # Specifies the type of operation (COMPARATIVE_PROPERTY_UPDATED).
        #
        # @see HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation#operation_type
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          COMPARATIVE_PROPERTY_UPDATED = :COMPARATIVE_PROPERTY_UPDATED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
