# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class RangedNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute lower_bound
        #
        #   @return [Integer]
        required :lower_bound, Integer, api_name: :lowerBound

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RangedNumberPropertyOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::RangedNumberPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RangedNumberPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::RangedNumberPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute upper_bound
        #
        #   @return [Integer]
        required :upper_bound, Integer, api_name: :upperBound

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!method initialize(include_objects_with_no_value_set:, lower_bound:, operation_type:, operator:, operator_name:, property_type:, upper_bound:, default_value: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param lower_bound [Integer]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::RangedNumberPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::RangedNumberPropertyOperation::PropertyType]
        #   @param upper_bound [Integer]
        #   @param default_value [String]

        # @see HubspotSDK::Models::Events::RangedNumberPropertyOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_BETWEEN = :IS_BETWEEN
          IS_NOT_BETWEEN = :IS_NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RangedNumberPropertyOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          NUMBER_RANGED = :"number-ranged"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
