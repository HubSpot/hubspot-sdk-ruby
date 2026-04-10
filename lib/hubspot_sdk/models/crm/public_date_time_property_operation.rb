# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicDateTimePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Specifies whether objects without a set value should be included in the
        #   operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   The type of operation (DATETIME).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Crm::PublicDateTimePropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied, such as comparison operators (IS_BEFORE,
        #   IS_AFTER).
        #
        #   @return [String]
        required :operator, String

        # @!attribute requires_time_zone_conversion
        #   Indicates whether the timestamp requires conversion to a different time zone.
        #
        #   @return [Boolean]
        required :requires_time_zone_conversion,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :requiresTimeZoneConversion

        # @!attribute timestamp
        #   The specific point in time used in the operation.
        #
        #   @return [Integer]
        required :timestamp, Integer

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, requires_time_zone_conversion:, timestamp:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Specifies whether objects without a set value should be included in the operatio
        #
        #   @param operation_type [Symbol, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation::OperationType] The type of operation (DATETIME).
        #
        #   @param operator [String] Defines the operation to be applied, such as comparison operators (IS_BEFORE, IS
        #
        #   @param requires_time_zone_conversion [Boolean] Indicates whether the timestamp requires conversion to a different time zone.
        #
        #   @param timestamp [Integer] The specific point in time used in the operation.

        # The type of operation (DATETIME).
        #
        # @see HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          DATETIME = :DATETIME

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
