# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class RangedTimeOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute lower_bound_endpoint_behavior
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::LowerBoundEndpointBehavior]
        required :lower_bound_endpoint_behavior,
                 enum: -> { HubSpotSDK::Events::RangedTimeOperation::LowerBoundEndpointBehavior },
                 api_name: :lowerBoundEndpointBehavior

        # @!attribute lower_bound_time_point
        #
        #   @return [HubSpotSDK::Models::Events::DatePoint, HubSpotSDK::Models::Events::IndexedTimePoint, HubSpotSDK::Models::Events::PropertyReferencedTime]
        required :lower_bound_time_point,
                 union: -> { HubSpotSDK::Events::RangedTimeOperation::LowerBoundTimePoint },
                 api_name: :lowerBoundTimePoint

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::RangedTimeOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_parser
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::PropertyParser]
        required :property_parser,
                 enum: -> { HubSpotSDK::Events::RangedTimeOperation::PropertyParser },
                 api_name: :propertyParser

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::RangedTimeOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute upper_bound_endpoint_behavior
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::UpperBoundEndpointBehavior]
        required :upper_bound_endpoint_behavior,
                 enum: -> { HubSpotSDK::Events::RangedTimeOperation::UpperBoundEndpointBehavior },
                 api_name: :upperBoundEndpointBehavior

        # @!attribute upper_bound_time_point
        #
        #   @return [HubSpotSDK::Models::Events::DatePoint, HubSpotSDK::Models::Events::IndexedTimePoint, HubSpotSDK::Models::Events::PropertyReferencedTime]
        required :upper_bound_time_point,
                 union: -> { HubSpotSDK::Events::RangedTimeOperation::UpperBoundTimePoint },
                 api_name: :upperBoundTimePoint

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(include_objects_with_no_value_set:, lower_bound_endpoint_behavior:, lower_bound_time_point:, operation_type:, operator:, operator_name:, property_parser:, property_type:, type:, upper_bound_endpoint_behavior:, upper_bound_time_point:, default_value: nil, render_spec: nil)
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param lower_bound_endpoint_behavior [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::LowerBoundEndpointBehavior]
        #   @param lower_bound_time_point [HubSpotSDK::Models::Events::DatePoint, HubSpotSDK::Models::Events::IndexedTimePoint, HubSpotSDK::Models::Events::PropertyReferencedTime]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::Operator]
        #   @param operator_name [String]
        #   @param property_parser [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::PropertyParser]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::PropertyType]
        #   @param type [String]
        #   @param upper_bound_endpoint_behavior [Symbol, HubSpotSDK::Models::Events::RangedTimeOperation::UpperBoundEndpointBehavior]
        #   @param upper_bound_time_point [HubSpotSDK::Models::Events::DatePoint, HubSpotSDK::Models::Events::IndexedTimePoint, HubSpotSDK::Models::Events::PropertyReferencedTime]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::RangedTimeOperation#lower_bound_endpoint_behavior
        module LowerBoundEndpointBehavior
          extend HubSpotSDK::Internal::Type::Enum

          EXCLUSIVE = :EXCLUSIVE
          INCLUSIVE = :INCLUSIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RangedTimeOperation#lower_bound_time_point
        module LowerBoundTimePoint
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Events::DatePoint }

          variant -> { HubSpotSDK::Events::IndexedTimePoint }

          variant -> { HubSpotSDK::Events::PropertyReferencedTime }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Events::DatePoint, HubSpotSDK::Models::Events::IndexedTimePoint, HubSpotSDK::Models::Events::PropertyReferencedTime)]
        end

        # @see HubSpotSDK::Models::Events::RangedTimeOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_BETWEEN = :IS_BETWEEN
          IS_NOT_BETWEEN = :IS_NOT_BETWEEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RangedTimeOperation#property_parser
        module PropertyParser
          extend HubSpotSDK::Internal::Type::Enum

          ANNIVERSARY = :ANNIVERSARY
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION
          UPDATED_AT = :UPDATED_AT
          VALUE = :VALUE
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RangedTimeOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          RANGEDTIME = :rangedtime

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RangedTimeOperation#upper_bound_endpoint_behavior
        module UpperBoundEndpointBehavior
          extend HubSpotSDK::Internal::Type::Enum

          EXCLUSIVE = :EXCLUSIVE
          INCLUSIVE = :INCLUSIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::RangedTimeOperation#upper_bound_time_point
        module UpperBoundTimePoint
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Events::DatePoint }

          variant -> { HubSpotSDK::Events::IndexedTimePoint }

          variant -> { HubSpotSDK::Events::PropertyReferencedTime }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Events::DatePoint, HubSpotSDK::Models::Events::IndexedTimePoint, HubSpotSDK::Models::Events::PropertyReferencedTime)]
        end
      end
    end
  end
end
