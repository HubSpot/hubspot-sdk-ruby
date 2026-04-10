# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class RollingDateRangePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute number_of_days
        #
        #   @return [Integer]
        required :number_of_days, Integer, api_name: :numberOfDays

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RollingDateRangePropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::RollingDateRangePropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RollingDateRangePropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::RollingDateRangePropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute requires_time_zone_conversion
        #
        #   @return [Boolean]
        required :requires_time_zone_conversion,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :requiresTimeZoneConversion

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(include_objects_with_no_value_set:, number_of_days:, operation_type:, operator:, operator_name:, property_type:, requires_time_zone_conversion:, default_value: nil, render_spec: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param number_of_days [Integer]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::RollingDateRangePropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::RollingDateRangePropertyOperation::PropertyType]
        #   @param requires_time_zone_conversion [Boolean]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::RollingDateRangePropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_LESS_THAN_X_DAYS_AGO = :IS_LESS_THAN_X_DAYS_AGO
          IS_LESS_THAN_X_DAYS_FROM_NOW = :IS_LESS_THAN_X_DAYS_FROM_NOW
          IS_MORE_THAN_X_DAYS_AGO = :IS_MORE_THAN_X_DAYS_AGO
          IS_MORE_THAN_X_DAYS_FROM_NOW = :IS_MORE_THAN_X_DAYS_FROM_NOW

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RollingDateRangePropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          DATETIME_ROLLING = :"datetime-rolling"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
