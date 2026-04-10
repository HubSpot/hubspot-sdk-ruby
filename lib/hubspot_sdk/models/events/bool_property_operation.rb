# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class BoolPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubSpotSDK::Models::Events::BoolPropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::BoolPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::BoolPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::BoolPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute value
        #
        #   @return [Boolean]
        required :value, HubSpotSDK::Internal::Type::Boolean

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, value:, default_value: nil, render_spec: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::BoolPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::BoolPropertyOperation::PropertyType]
        #   @param value [Boolean]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::BoolPropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          HAS_EVER_BEEN_EQUAL_TO = :HAS_EVER_BEEN_EQUAL_TO
          HAS_NEVER_BEEN_EQUAL_TO = :HAS_NEVER_BEEN_EQUAL_TO
          IS_EQUAL_TO = :IS_EQUAL_TO
          IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::BoolPropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          BOOL = :bool

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
