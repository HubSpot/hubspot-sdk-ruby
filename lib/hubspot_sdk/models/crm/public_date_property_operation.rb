# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute day
        #   The day of the month for the date operation.
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute month
        #   The month for the date operation.
        #
        #   @return [String]
        required :month, String

        # @!attribute operation_type
        #   Specifies the type of operation (DATE).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicDatePropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Crm::PublicDatePropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied in the date property operation
        #   (IS_LESS_THAN_X_DAYS_AGO, IS_MORE_THAN_X_DAYS_AGO, IS_LESS_THAN_X_DAYS_FROM_NOW,
        #   IS_MORE_THAN_X_DAYS_FROM_NOW).
        #
        #   @return [String]
        required :operator, String

        # @!attribute year
        #   The year for the date operation.
        #
        #   @return [Integer]
        required :year, Integer

        # @!method initialize(day:, include_objects_with_no_value_set:, month:, operation_type:, operator:, year:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicDatePropertyOperation} for more details.
        #
        #   @param day [Integer] The day of the month for the date operation.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included.
        #
        #   @param month [String] The month for the date operation.
        #
        #   @param operation_type [Symbol, HubSpotSDK::Models::Crm::PublicDatePropertyOperation::OperationType] Specifies the type of operation (DATE).
        #
        #   @param operator [String] Defines the operation to be applied in the date property operation (IS_LESS_THAN
        #
        #   @param year [Integer] The year for the date operation.

        # Specifies the type of operation (DATE).
        #
        # @see HubSpotSDK::Models::Crm::PublicDatePropertyOperation#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          DATE = :DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
