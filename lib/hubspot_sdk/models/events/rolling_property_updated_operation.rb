# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class RollingPropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
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
        #   @return [Symbol, HubspotSDK::Models::Events::RollingPropertyUpdatedOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::RollingPropertyUpdatedOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RollingPropertyUpdatedOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::RollingPropertyUpdatedOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(include_objects_with_no_value_set:, number_of_days:, operation_type:, operator:, operator_name:, property_type:, default_value: nil, render_spec: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param number_of_days [Integer]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::RollingPropertyUpdatedOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::RollingPropertyUpdatedOperation::PropertyType]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubspotSDK::Models::Events::RollingPropertyUpdatedOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          NOT_UPDATED_IN_LAST_X_DAYS = :NOT_UPDATED_IN_LAST_X_DAYS
          UPDATED_IN_LAST_X_DAYS = :UPDATED_IN_LAST_X_DAYS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RollingPropertyUpdatedOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          ROLLING_PROPERTY_UPDATED = :"rolling-property-updated"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
