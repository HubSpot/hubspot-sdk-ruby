# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class RangedDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute lower_bound_timestamp
        #
        #   @return [Integer]
        required :lower_bound_timestamp, Integer, api_name: :lowerBoundTimestamp

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RangedDatePropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::RangedDatePropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RangedDatePropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::RangedDatePropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute requires_time_zone_conversion
        #
        #   @return [Boolean]
        required :requires_time_zone_conversion,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :requiresTimeZoneConversion

        # @!attribute upper_bound_timestamp
        #
        #   @return [Integer]
        required :upper_bound_timestamp, Integer, api_name: :upperBoundTimestamp

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(include_objects_with_no_value_set:, lower_bound_timestamp:, operation_type:, operator:, operator_name:, property_type:, requires_time_zone_conversion:, upper_bound_timestamp:, default_value: nil, render_spec: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param lower_bound_timestamp [Integer]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::RangedDatePropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::RangedDatePropertyOperation::PropertyType]
        #   @param requires_time_zone_conversion [Boolean]
        #   @param upper_bound_timestamp [Integer]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::RangedDatePropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_BETWEEN = :IS_BETWEEN
          IS_NOT_BETWEEN = :IS_NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RangedDatePropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          DATETIME_RANGED = :"datetime-ranged"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
