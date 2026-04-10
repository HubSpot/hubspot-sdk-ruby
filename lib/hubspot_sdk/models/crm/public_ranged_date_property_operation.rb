# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicRangedDatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Specifies whether objects without a set value should be included in the
        #   operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute lower_bound
        #   The lower limit of the date range for the operation.
        #
        #   @return [Integer]
        required :lower_bound, Integer, api_name: :lowerBound

        # @!attribute operation_type
        #   Specifies the type of operation (RANGED_DATE).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied in the ranged date property operation
        #   (IS_BETWEEN, IS_NOT_BETWEEN).
        #
        #   @return [String]
        required :operator, String

        # @!attribute requires_time_zone_conversion
        #   Indicates whether the operation requires conversion to a different time zone.
        #
        #   @return [Boolean]
        required :requires_time_zone_conversion,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :requiresTimeZoneConversion

        # @!attribute upper_bound
        #   The upper limit of the date range for the operation.
        #
        #   @return [Integer]
        required :upper_bound, Integer, api_name: :upperBound

        # @!method initialize(include_objects_with_no_value_set:, lower_bound:, operation_type:, operator:, requires_time_zone_conversion:, upper_bound:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Specifies whether objects without a set value should be included in the operatio
        #
        #   @param lower_bound [Integer] The lower limit of the date range for the operation.
        #
        #   @param operation_type [Symbol, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation::OperationType] Specifies the type of operation (RANGED_DATE).
        #
        #   @param operator [String] Defines the operation to be applied in the ranged date property operation (IS_BE
        #
        #   @param requires_time_zone_conversion [Boolean] Indicates whether the operation requires conversion to a different time zone.
        #
        #   @param upper_bound [Integer] The upper limit of the date range for the operation.

        # Specifies the type of operation (RANGED_DATE).
        #
        # @see HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          RANGED_DATE = :RANGED_DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
