# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class RegexPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute case_sensitive
        #
        #   @return [Boolean]
        required :case_sensitive, HubSpotSDK::Internal::Type::Boolean, api_name: :caseSensitive

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
        #   @return [Symbol, HubSpotSDK::Models::Events::RegexPropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::RegexPropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute pattern
        #
        #   @return [String]
        required :pattern, String

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RegexPropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::RegexPropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(case_sensitive:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, pattern:, property_type:, default_value: nil, render_spec: nil)
        #   @param case_sensitive [Boolean]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::RegexPropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param pattern [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::RegexPropertyOperation::PropertyType]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::RegexPropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          DOES_NOT_MATCH_REGEX = :DOES_NOT_MATCH_REGEX
          MATCHES_REGEX = :MATCHES_REGEX

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RegexPropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          REGEX = :regex

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
