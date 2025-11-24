# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class BoolPropertyOperation < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubspotSDK::Models::Events::BoolPropertyOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::BoolPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::BoolPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::BoolPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute value
        #
        #   @return [Boolean]
        required :value, HubspotSDK::Internal::Type::Boolean

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, value:, default_value: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::BoolPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::BoolPropertyOperation::PropertyType]
        #   @param value [Boolean]
        #   @param default_value [String]

        # @see HubspotSDK::Models::Events::BoolPropertyOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          HAS_EVER_BEEN_EQUAL_TO = :HAS_EVER_BEEN_EQUAL_TO
          HAS_NEVER_BEEN_EQUAL_TO = :HAS_NEVER_BEEN_EQUAL_TO
          IS_EQUAL_TO = :IS_EQUAL_TO
          IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::BoolPropertyOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          BOOL = :bool

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
