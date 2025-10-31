# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicRangedTimeOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute lower_bound_time_point
      #
      #   @return [HubspotSDK::Models::PublicDatePoint, HubspotSDK::Models::PublicIndexedTimePoint, HubspotSDK::Models::PublicPropertyReferencedTime]
      required :lower_bound_time_point,
               union: -> { HubspotSDK::PublicRangedTimeOperation::LowerBoundTimePoint },
               api_name: :lowerBoundTimePoint

      # @!attribute operation_type
      #
      #   @return [String]
      required :operation_type, String, api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicRangedTimeOperation::Type]
      required :type, enum: -> { HubspotSDK::PublicRangedTimeOperation::Type }

      # @!attribute upper_bound_time_point
      #
      #   @return [HubspotSDK::Models::PublicDatePoint, HubspotSDK::Models::PublicIndexedTimePoint, HubspotSDK::Models::PublicPropertyReferencedTime]
      required :upper_bound_time_point,
               union: -> { HubspotSDK::PublicRangedTimeOperation::UpperBoundTimePoint },
               api_name: :upperBoundTimePoint

      # @!attribute lower_bound_endpoint_behavior
      #
      #   @return [String, nil]
      optional :lower_bound_endpoint_behavior, String, api_name: :lowerBoundEndpointBehavior

      # @!attribute property_parser
      #
      #   @return [String, nil]
      optional :property_parser, String, api_name: :propertyParser

      # @!attribute upper_bound_endpoint_behavior
      #
      #   @return [String, nil]
      optional :upper_bound_endpoint_behavior, String, api_name: :upperBoundEndpointBehavior

      # @!method initialize(include_objects_with_no_value_set:, lower_bound_time_point:, operation_type:, operator:, type:, upper_bound_time_point:, lower_bound_endpoint_behavior: nil, property_parser: nil, upper_bound_endpoint_behavior: nil)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param lower_bound_time_point [HubspotSDK::Models::PublicDatePoint, HubspotSDK::Models::PublicIndexedTimePoint, HubspotSDK::Models::PublicPropertyReferencedTime]
      #   @param operation_type [String]
      #   @param operator [String]
      #   @param type [Symbol, HubspotSDK::Models::PublicRangedTimeOperation::Type]
      #   @param upper_bound_time_point [HubspotSDK::Models::PublicDatePoint, HubspotSDK::Models::PublicIndexedTimePoint, HubspotSDK::Models::PublicPropertyReferencedTime]
      #   @param lower_bound_endpoint_behavior [String]
      #   @param property_parser [String]
      #   @param upper_bound_endpoint_behavior [String]

      # @see HubspotSDK::Models::PublicRangedTimeOperation#lower_bound_time_point
      module LowerBoundTimePoint
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicDatePoint }

        variant -> { HubspotSDK::PublicIndexedTimePoint }

        variant -> { HubspotSDK::PublicPropertyReferencedTime }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicDatePoint, HubspotSDK::Models::PublicIndexedTimePoint, HubspotSDK::Models::PublicPropertyReferencedTime)]
      end

      # @see HubspotSDK::Models::PublicRangedTimeOperation#type
      module Type
        extend HubspotSDK::Internal::Type::Enum

        TIME_RANGED = :TIME_RANGED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicRangedTimeOperation#upper_bound_time_point
      module UpperBoundTimePoint
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicDatePoint }

        variant -> { HubspotSDK::PublicIndexedTimePoint }

        variant -> { HubspotSDK::PublicPropertyReferencedTime }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicDatePoint, HubspotSDK::Models::PublicIndexedTimePoint, HubspotSDK::Models::PublicPropertyReferencedTime)]
      end
    end
  end
end
