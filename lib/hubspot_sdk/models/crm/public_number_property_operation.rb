# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicNumberPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   Specifies the type of operation (NUMBER).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Crm::PublicNumberPropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied in the number property operation
        #   (IS_EQUAL_TO, IS_NOT_EQUAL_TO, IS_GREATER_THAN, IS_GREATER_THAN_OR_EQUAL_TO,
        #   IS_LESS_THAN, IS_LESS_THAN_OR_EQUAL_TO, HAS_EVER_BEEN_EQUAL_TO,
        #   HAS_NEVER_BEEN_EQUAL_TO).
        #
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The numeric value to be used in the operation.
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, value:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicNumberPropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param operation_type [Symbol, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation::OperationType] Specifies the type of operation (NUMBER).
        #
        #   @param operator [String] Defines the operation to be applied in the number property operation (IS_EQUAL_T
        #
        #   @param value [Float] The numeric value to be used in the operation.

        # Specifies the type of operation (NUMBER).
        #
        # @see HubSpotSDK::Models::Crm::PublicNumberPropertyOperation#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          NUMBER = :NUMBER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
