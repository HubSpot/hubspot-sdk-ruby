# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicRollingPropertyUpdatedOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute number_of_days
        #   The number of days to be considered in the rolling property updated operation.
        #
        #   @return [Integer]
        required :number_of_days, Integer, api_name: :numberOfDays

        # @!attribute operation_type
        #   Specifies the type of operation (ROLLING_PROPERTY_UPDATED).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied within the rolling property updated
        #   operation (UPDATED_IN_LAST_X_DAYS, NOT_UPDATED_IN_LAST_X_DAYS).
        #
        #   @return [String]
        required :operator, String

        # @!method initialize(include_objects_with_no_value_set:, number_of_days:, operation_type:, operator:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation} for more
        #   details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param number_of_days [Integer] The number of days to be considered in the rolling property updated operation.
        #
        #   @param operation_type [Symbol, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation::OperationType] Specifies the type of operation (ROLLING_PROPERTY_UPDATED).
        #
        #   @param operator [String] Defines the operation to be applied within the rolling property updated operatio

        # Specifies the type of operation (ROLLING_PROPERTY_UPDATED).
        #
        # @see HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          ROLLING_PROPERTY_UPDATED = :ROLLING_PROPERTY_UPDATED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
