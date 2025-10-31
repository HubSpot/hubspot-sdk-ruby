# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicRollingDateRangePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute number_of_days
      #
      #   @return [Integer]
      required :number_of_days, Integer, api_name: :numberOfDays

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicRollingDateRangePropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicRollingDateRangePropertyOperation::OperationType },
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

      # @!method initialize(include_objects_with_no_value_set:, number_of_days:, operation_type:, operator:, requires_time_zone_conversion:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param number_of_days [Integer]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicRollingDateRangePropertyOperation::OperationType]
      #   @param operator [String]
      #   @param requires_time_zone_conversion [Boolean]

      # @see HubspotSDK::Models::PublicRollingDateRangePropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        ROLLING_DATE_RANGE = :ROLLING_DATE_RANGE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
