# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicRollingPropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
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
      #   @return [Symbol, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicRollingPropertyUpdatedOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!method initialize(include_objects_with_no_value_set:, number_of_days:, operation_type:, operator:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param number_of_days [Integer]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation::OperationType]
      #   @param operator [String]

      # @see HubspotSDK::Models::PublicRollingPropertyUpdatedOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        ROLLING_PROPERTY_UPDATED = :ROLLING_PROPERTY_UPDATED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
