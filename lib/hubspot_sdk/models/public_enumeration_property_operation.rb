# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicEnumerationPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicEnumerationPropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicEnumerationPropertyOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute values
      #
      #   @return [Array<String>]
      required :values, HubspotSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, values:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicEnumerationPropertyOperation::OperationType]
      #   @param operator [String]
      #   @param values [Array<String>]

      # @see HubspotSDK::Models::PublicEnumerationPropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        ENUMERATION = :ENUMERATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
