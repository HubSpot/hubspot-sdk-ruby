# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicAllPropertyTypesOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicAllPropertyTypesOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicAllPropertyTypesOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicAllPropertyTypesOperation::OperationType]
      #   @param operator [String]

      # @see HubspotSDK::Models::PublicAllPropertyTypesOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        ALL_PROPERTY = :ALL_PROPERTY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
