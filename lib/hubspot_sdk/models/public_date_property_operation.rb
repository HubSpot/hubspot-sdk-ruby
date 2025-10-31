# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute day
      #
      #   @return [Integer]
      required :day, Integer

      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute month
      #
      #   @return [String]
      required :month, String

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicDatePropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicDatePropertyOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute year
      #
      #   @return [Integer]
      required :year, Integer

      # @!method initialize(day:, include_objects_with_no_value_set:, month:, operation_type:, operator:, year:)
      #   @param day [Integer]
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param month [String]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicDatePropertyOperation::OperationType]
      #   @param operator [String]
      #   @param year [Integer]

      # @see HubspotSDK::Models::PublicDatePropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        DATE = :DATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
