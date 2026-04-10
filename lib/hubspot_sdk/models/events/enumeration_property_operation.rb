# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class EnumerationPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubSpotSDK::Models::Events::EnumerationPropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::EnumerationPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::EnumerationPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::EnumerationPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute values
        #
        #   @return [Array<String>]
        required :values, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, values:, default_value: nil, render_spec: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::EnumerationPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::EnumerationPropertyOperation::PropertyType]
        #   @param values [Array<String>]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::EnumerationPropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          CONTAINS_ALL = :CONTAINS_ALL
          DOES_NOT_CONTAIN_ALL = :DOES_NOT_CONTAIN_ALL
          HAS_EVER_BEEN_ANY_OF = :HAS_EVER_BEEN_ANY_OF
          HAS_EVER_BEEN_EXACTLY = :HAS_EVER_BEEN_EXACTLY
          HAS_EVER_CONTAINED_ALL = :HAS_EVER_CONTAINED_ALL
          HAS_NEVER_BEEN_ANY_OF = :HAS_NEVER_BEEN_ANY_OF
          HAS_NEVER_BEEN_EXACTLY = :HAS_NEVER_BEEN_EXACTLY
          HAS_NEVER_CONTAINED_ALL = :HAS_NEVER_CONTAINED_ALL
          IS_ANY_OF = :IS_ANY_OF
          IS_EXACTLY = :IS_EXACTLY
          IS_NONE_OF = :IS_NONE_OF
          IS_NOT_EXACTLY = :IS_NOT_EXACTLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::EnumerationPropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          ENUMERATION = :enumeration

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
