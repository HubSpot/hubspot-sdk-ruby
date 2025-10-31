# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicBoolPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicBoolPropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicBoolPropertyOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute value
      #
      #   @return [Boolean]
      required :value, HubspotSDK::Internal::Type::Boolean

      # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, value:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicBoolPropertyOperation::OperationType]
      #   @param operator [String]
      #   @param value [Boolean]

      # @see HubspotSDK::Models::PublicBoolPropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        BOOL = :BOOL

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
