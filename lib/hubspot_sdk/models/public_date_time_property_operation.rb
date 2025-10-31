# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicDateTimePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicDateTimePropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicDateTimePropertyOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute requires_time_zone_conversion
      #
      #   @return [Boolean]
      required :requires_time_zone_conversion,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :requiresTimeZoneConversion

      # @!attribute timestamp
      #
      #   @return [Integer]
      required :timestamp, Integer

      # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, requires_time_zone_conversion:, timestamp:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicDateTimePropertyOperation::OperationType]
      #   @param operator [String]
      #   @param requires_time_zone_conversion [Boolean]
      #   @param timestamp [Integer]

      # @see HubspotSDK::Models::PublicDateTimePropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        DATETIME = :DATETIME

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
