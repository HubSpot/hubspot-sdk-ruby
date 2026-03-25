# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicRangedNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute lower_bound
        #   The lower limit of the number range for the operation.
        #
        #   @return [Integer]
        required :lower_bound, Integer, api_name: :lowerBound

        # @!attribute operation_type
        #   Specifies the type of operation (NUMBER_RANGED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubspotSDK::Crm::PublicRangedNumberPropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied in the ranged number property operation
        #   (IS_BETWEEN, IS_NOT_BETWEEN).
        #
        #   @return [String]
        required :operator, String

        # @!attribute upper_bound
        #   The upper limit of the number range for the operation.
        #
        #   @return [Integer]
        required :upper_bound, Integer, api_name: :upperBound

        # @!method initialize(include_objects_with_no_value_set:, lower_bound:, operation_type:, operator:, upper_bound:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param lower_bound [Integer] The lower limit of the number range for the operation.
        #
        #   @param operation_type [Symbol, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation::OperationType] Specifies the type of operation (NUMBER_RANGED).
        #
        #   @param operator [String] Defines the operation to be applied in the ranged number property operation
        #   (IS\_
        #
        #   @param upper_bound [Integer] The upper limit of the number range for the operation.

        # Specifies the type of operation (NUMBER_RANGED).
        #
        # @see HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation#operation_type
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          NUMBER_RANGED = :NUMBER_RANGED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
