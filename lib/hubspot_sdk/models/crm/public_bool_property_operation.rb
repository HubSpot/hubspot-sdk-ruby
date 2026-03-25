# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicBoolPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   Specifies the type of operation (BOOL).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicBoolPropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubspotSDK::Crm::PublicBoolPropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied in the boolean property operation
        #   (IS_EQUAL_TO, IS_NOT_EQUAL_TO, HAS_EVER_BEEN_EQUAL_TO, HAS_NEVER_BEEN_EQUAL_TO).
        #
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The boolean value to be used in the operation.
        #
        #   @return [Boolean]
        required :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, value:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicBoolPropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param operation_type [Symbol, HubspotSDK::Models::Crm::PublicBoolPropertyOperation::OperationType] Specifies the type of operation (BOOL).
        #
        #   @param operator [String] Defines the operation to be applied in the boolean property operation (IS*EQUAL*
        #
        #   @param value [Boolean] The boolean value to be used in the operation.

        # Specifies the type of operation (BOOL).
        #
        # @see HubspotSDK::Models::Crm::PublicBoolPropertyOperation#operation_type
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          BOOL = :BOOL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
