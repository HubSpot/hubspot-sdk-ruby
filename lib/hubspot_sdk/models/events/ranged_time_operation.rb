# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class RangedTimeOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute lower_bound_endpoint_behavior
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::LowerBoundEndpointBehavior]
        required :lower_bound_endpoint_behavior,
                 enum: -> { HubspotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior },
                 api_name: :lowerBoundEndpointBehavior

        # @!attribute lower_bound_time_point
        #
        #   @return [HubspotSDK::Models::Events::DatePoint, HubspotSDK::Models::Events::IndexedTimePoint, HubspotSDK::Models::Events::PropertyReferencedTime]
        required :lower_bound_time_point,
                 union: -> { HubspotSDK::Events::RangedTimeOperation::LowerBoundTimePoint },
                 api_name: :lowerBoundTimePoint

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::RangedTimeOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_parser
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::PropertyParser]
        required :property_parser,
                 enum: -> { HubspotSDK::Events::RangedTimeOperation::PropertyParser },
                 api_name: :propertyParser

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::RangedTimeOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute upper_bound_endpoint_behavior
        #
        #   @return [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::UpperBoundEndpointBehavior]
        required :upper_bound_endpoint_behavior,
                 enum: -> { HubspotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior },
                 api_name: :upperBoundEndpointBehavior

        # @!attribute upper_bound_time_point
        #
        #   @return [HubspotSDK::Models::Events::DatePoint, HubspotSDK::Models::Events::IndexedTimePoint, HubspotSDK::Models::Events::PropertyReferencedTime]
        required :upper_bound_time_point,
                 union: -> { HubspotSDK::Events::RangedTimeOperation::UpperBoundTimePoint },
                 api_name: :upperBoundTimePoint

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!method initialize(include_objects_with_no_value_set:, lower_bound_endpoint_behavior:, lower_bound_time_point:, operation_type:, operator:, operator_name:, property_parser:, property_type:, type:, upper_bound_endpoint_behavior:, upper_bound_time_point:, default_value: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param lower_bound_endpoint_behavior [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::LowerBoundEndpointBehavior]
        #   @param lower_bound_time_point [HubspotSDK::Models::Events::DatePoint, HubspotSDK::Models::Events::IndexedTimePoint, HubspotSDK::Models::Events::PropertyReferencedTime]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::Operator]
        #   @param operator_name [String]
        #   @param property_parser [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::PropertyParser]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::PropertyType]
        #   @param type [String]
        #   @param upper_bound_endpoint_behavior [Symbol, HubspotSDK::Models::Events::RangedTimeOperation::UpperBoundEndpointBehavior]
        #   @param upper_bound_time_point [HubspotSDK::Models::Events::DatePoint, HubspotSDK::Models::Events::IndexedTimePoint, HubspotSDK::Models::Events::PropertyReferencedTime]
        #   @param default_value [String]

        # @see HubspotSDK::Models::Events::RangedTimeOperation#lower_bound_endpoint_behavior
        module LowerBoundEndpointBehavior
          extend HubspotSDK::Internal::Type::Enum

          EXCLUSIVE = :EXCLUSIVE
          INCLUSIVE = :INCLUSIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RangedTimeOperation#lower_bound_time_point
        module LowerBoundTimePoint
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Events::DatePoint }

          variant -> { HubspotSDK::Events::IndexedTimePoint }

          variant -> { HubspotSDK::Events::PropertyReferencedTime }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Events::DatePoint, HubspotSDK::Models::Events::IndexedTimePoint, HubspotSDK::Models::Events::PropertyReferencedTime)]
        end

        # @see HubspotSDK::Models::Events::RangedTimeOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_BETWEEN = :IS_BETWEEN
          IS_NOT_BETWEEN = :IS_NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RangedTimeOperation#property_parser
        module PropertyParser
          extend HubspotSDK::Internal::Type::Enum

          ANNIVERSARY = :ANNIVERSARY
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION
          UPDATED_AT = :UPDATED_AT
          VALUE = :VALUE
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RangedTimeOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          RANGEDTIME = :rangedtime

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RangedTimeOperation#upper_bound_endpoint_behavior
        module UpperBoundEndpointBehavior
          extend HubspotSDK::Internal::Type::Enum

          EXCLUSIVE = :EXCLUSIVE
          INCLUSIVE = :INCLUSIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::RangedTimeOperation#upper_bound_time_point
        module UpperBoundTimePoint
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Events::DatePoint }

          variant -> { HubspotSDK::Events::IndexedTimePoint }

          variant -> { HubspotSDK::Events::PropertyReferencedTime }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Events::DatePoint, HubspotSDK::Models::Events::IndexedTimePoint, HubspotSDK::Models::Events::PropertyReferencedTime)]
        end
      end
    end
  end
end
