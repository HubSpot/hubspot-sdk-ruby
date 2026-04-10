# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicMultiStringPropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   Specifies the type of operation (MULTISTRING).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Crm::PublicMultiStringPropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied in the multi-string property operation
        #   (IS_EQUAL_TO, IS_NOT_EQUAL_TO, CONTAINS, CONTAINS_EXACTLY, DOES_NOT_CONTAIN,
        #   DOES_NOT_CONTAIN_EXACTLY, STARTS_WITH, ENDS_WITH).
        #
        #   @return [String]
        required :operator, String

        # @!attribute values
        #
        #   @return [Array<String>]
        required :values, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, values:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param operation_type [Symbol, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation::OperationType] Specifies the type of operation (MULTISTRING).
        #
        #   @param operator [String] Defines the operation to be applied in the multi-string property operation (IS_E
        #
        #   @param values [Array<String>]

        # Specifies the type of operation (MULTISTRING).
        #
        # @see HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          MULTISTRING = :MULTISTRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
