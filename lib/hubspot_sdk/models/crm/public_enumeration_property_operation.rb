# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicEnumerationPropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   Specifies the type of operation (ENUMERATION).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubspotSDK::Crm::PublicEnumerationPropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied in the enumeration property operation
        #   (IS_ANY_OF, IS_NONE_OF, IS_EXACTLY, IS_NOT_EXACTLY, CONTAINS_ALL,
        #   DOES_NOT_CONTAIN_ALL, HAS_EVER_BEEN_ANY_OF, HAS_NEVER_BEEN_ANY_OF,
        #   HAS_EVER_BEEN_EXACTLY, HAS_NEVER_BEEN_EXACTLY, HAS_EVER_CONTAINED_ALL,
        #   HAS_NEVER_CONTAINED_ALL).
        #
        #   @return [String]
        required :operator, String

        # @!attribute values
        #
        #   @return [Array<String>]
        required :values, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, values:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param operation_type [Symbol, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation::OperationType] Specifies the type of operation (ENUMERATION).
        #
        #   @param operator [String] Defines the operation to be applied in the enumeration property operation (IS_AN
        #
        #   @param values [Array<String>]

        # Specifies the type of operation (ENUMERATION).
        #
        # @see HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation#operation_type
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          ENUMERATION = :ENUMERATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
