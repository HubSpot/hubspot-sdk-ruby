# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicStringPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   Specifies the type of operation (STRING).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicStringPropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Crm::PublicStringPropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied in the string property operation
        #   ()IS_EQUAL_TO, IS_NOT_EQUAL_TO, CONTAINS, DOES_NOT_CONTAIN, STARTS_WITH,
        #   ENDS_WITH, HAS_EVER_BEEN_EQUAL_TO, HAS_NEVER_BEEN_EQUAL_TO, HAS_EVER_CONTAINED,
        #   HAS_NEVER_CONTAINED).
        #
        #   @return [String]
        required :operator, String

        # @!attribute value
        #   The string value to be used in the operation.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, value:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicStringPropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param operation_type [Symbol, HubSpotSDK::Models::Crm::PublicStringPropertyOperation::OperationType] Specifies the type of operation (STRING).
        #
        #   @param operator [String] Defines the operation to be applied in the string property operation ()IS*EQUAL*
        #
        #   @param value [String] The string value to be used in the operation.

        # Specifies the type of operation (STRING).
        #
        # @see HubSpotSDK::Models::Crm::PublicStringPropertyOperation#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          STRING = :STRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
