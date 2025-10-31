# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class RangedDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
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
        #   @return [Symbol, HubspotSDK::Models::Events::RangedDatePropertyOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::RangedDatePropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RangedDatePropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::RangedDatePropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute requires_time_zone_conversion
        #
        #   @return [Boolean]
        required :requires_time_zone_conversion,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :requiresTimeZoneConversion

        # @!attribute upper_bound_timestamp
        #
        #   @return [Integer]
        required :upper_bound_timestamp, Integer, api_name: :upperBoundTimestamp

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!method initialize(include_objects_with_no_value_set:, lower_bound_timestamp:, operation_type:, operator:, operator_name:, property_type:, requires_time_zone_conversion:, upper_bound_timestamp:, default_value: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param lower_bound_timestamp [Integer]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::RangedDatePropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::RangedDatePropertyOperation::PropertyType]
        #   @param requires_time_zone_conversion [Boolean]
        #   @param upper_bound_timestamp [Integer]
        #   @param default_value [String]

        # @see HubspotSDK::Models::Events::RangedDatePropertyOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_BETWEEN = :IS_BETWEEN
          IS_NOT_BETWEEN = :IS_NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RangedDatePropertyOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          DATETIME_RANGED = :"datetime-ranged"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
