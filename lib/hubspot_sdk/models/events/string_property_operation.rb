# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class StringPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubSpotSDK::Models::Events::StringPropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::StringPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::StringPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::StringPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute value
        #
        #   @return [String]
        required :value, String

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
        #   @param operator [Symbol, HubSpotSDK::Models::Events::StringPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::StringPropertyOperation::PropertyType]
        #   @param value [String]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::StringPropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          CONTAINS = :CONTAINS
          DOES_NOT_CONTAIN = :DOES_NOT_CONTAIN
          ENDS_WITH = :ENDS_WITH
          HAS_EVER_BEEN_EQUAL_TO = :HAS_EVER_BEEN_EQUAL_TO
          HAS_EVER_CONTAINED = :HAS_EVER_CONTAINED
          HAS_NEVER_BEEN_EQUAL_TO = :HAS_NEVER_BEEN_EQUAL_TO
          HAS_NEVER_CONTAINED = :HAS_NEVER_CONTAINED
          IS_EQUAL_TO = :IS_EQUAL_TO
          IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
          STARTS_WITH = :STARTS_WITH

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::StringPropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          STRING = :string

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
