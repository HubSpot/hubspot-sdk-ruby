# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicRangedDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute lower_bound
      #
      #   @return [Integer]
      required :lower_bound, Integer, api_name: :lowerBound

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicRangedDatePropertyOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicRangedDatePropertyOperation::OperationType },
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

      # @!attribute upper_bound
      #
      #   @return [Integer]
      required :upper_bound, Integer, api_name: :upperBound

      # @!method initialize(include_objects_with_no_value_set:, lower_bound:, operation_type:, operator:, requires_time_zone_conversion:, upper_bound:)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param lower_bound [Integer]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicRangedDatePropertyOperation::OperationType]
      #   @param operator [String]
      #   @param requires_time_zone_conversion [Boolean]
      #   @param upper_bound [Integer]

      # @see HubspotSDK::Models::PublicRangedDatePropertyOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        RANGED_DATE = :RANGED_DATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
