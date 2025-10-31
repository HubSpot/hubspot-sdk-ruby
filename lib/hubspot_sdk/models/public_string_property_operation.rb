# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicStringPropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicStringPropertyOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, value:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicStringPropertyOperation::OperationType]
      #   @param operator [String]
      #   @param value [String]

      # @see HubspotSDK::Models::PublicStringPropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        STRING = :STRING

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
