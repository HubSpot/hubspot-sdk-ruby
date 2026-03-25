# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class DateTimePropertyOperation < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, HubspotSDK::Models::Events::DateTimePropertyOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::DateTimePropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::DateTimePropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::DateTimePropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute requires_time_zone_conversion
        #
        #   @return [Boolean]
        required :requires_time_zone_conversion,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :requiresTimeZoneConversion

        # @!attribute timestamp
        #
        #   @return [Integer]
        required :timestamp, Integer

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, requires_time_zone_conversion:, timestamp:, default_value: nil, render_spec: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::DateTimePropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::DateTimePropertyOperation::PropertyType]
        #   @param requires_time_zone_conversion [Boolean]
        #   @param timestamp [Integer]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubspotSDK::Models::Events::DateTimePropertyOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_AFTER = :IS_AFTER
          IS_AFTER_DATE = :IS_AFTER_DATE
          IS_BEFORE = :IS_BEFORE
          IS_BEFORE_DATE = :IS_BEFORE_DATE
          IS_EQUAL_TO = :IS_EQUAL_TO

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::DateTimePropertyOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          DATETIME = :datetime

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
