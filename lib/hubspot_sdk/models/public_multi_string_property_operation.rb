# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicMultiStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicMultiStringPropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicMultiStringPropertyOperation::OperationType },
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
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicMultiStringPropertyOperation::OperationType]
      #   @param operator [String]
      #   @param values [Array<String>]

      # @see HubspotSDK::Models::PublicMultiStringPropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        MULTISTRING = :MULTISTRING

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
