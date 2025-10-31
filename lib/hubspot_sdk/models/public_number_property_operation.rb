# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicNumberPropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicNumberPropertyOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute value
      #
      #   @return [Float]
      required :value, Float

      # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, value:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicNumberPropertyOperation::OperationType]
      #   @param operator [String]
      #   @param value [Float]

      # @see HubspotSDK::Models::PublicNumberPropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        NUMBER = :NUMBER

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
