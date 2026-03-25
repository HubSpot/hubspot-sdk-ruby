# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicRollingDateRangePropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute number_of_days
        #   The number of days to be considered in the rolling date range operation.
        #
        #   @return [Integer]
        required :number_of_days, Integer, api_name: :numberOfDays

        # @!attribute operation_type
        #   Specifies the type of operation (ROLLING_DATE_RANGE).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubspotSDK::Crm::PublicRollingDateRangePropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied within the rolling date range property
        #   operation (IS_LESS_THAN_X_DAYS_AGO, IS_MORE_THAN_X_DAYS_AGO,
        #   IS_LESS_THAN_X_DAYS_FROM_NOW, IS_MORE_THAN_X_DAYS_FROM_NOW).
        #
        #   @return [String]
        required :operator, String

        # @!attribute requires_time_zone_conversion
        #   Specifies whether the operation requires conversion to a different time zone.
        #
        #   @return [Boolean]
        required :requires_time_zone_conversion,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :requiresTimeZoneConversion

        # @!method initialize(include_objects_with_no_value_set:, number_of_days:, operation_type:, operator:, requires_time_zone_conversion:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation} for more
        #   details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param number_of_days [Integer] The number of days to be considered in the rolling date range operation.
        #
        #   @param operation_type [Symbol, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation::OperationType] Specifies the type of operation (ROLLING_DATE_RANGE).
        #
        #   @param operator [String] Defines the operation to be applied within the rolling date range property opera
        #
        #   @param requires_time_zone_conversion [Boolean] Specifies whether the operation requires conversion to a different time zone.

        # Specifies the type of operation (ROLLING_DATE_RANGE).
        #
        # @see HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation#operation_type
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          ROLLING_DATE_RANGE = :ROLLING_DATE_RANGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
