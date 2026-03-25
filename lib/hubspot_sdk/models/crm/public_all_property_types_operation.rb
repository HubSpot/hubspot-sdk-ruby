# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAllPropertyTypesOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indication of whether objects with no value should be included
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   Type of operation (ALL_PROPERTY)
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation::OperationType]
        required :operation_type,
                 enum: -> { HubspotSDK::Crm::PublicAllPropertyTypesOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Operator to be applied (IS_KNOWN, IS_UNKNOWN)
        #
        #   @return [String]
        required :operator, String

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:)
        #   @param include_objects_with_no_value_set [Boolean] Indication of whether objects with no value should be included
        #
        #   @param operation_type [Symbol, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation::OperationType] Type of operation (ALL_PROPERTY)
        #
        #   @param operator [String] Operator to be applied (IS_KNOWN, IS_UNKNOWN)

        # Type of operation (ALL_PROPERTY)
        #
        # @see HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation#operation_type
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          ALL_PROPERTY = :ALL_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
