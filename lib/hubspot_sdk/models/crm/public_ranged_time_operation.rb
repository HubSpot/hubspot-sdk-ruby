# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicRangedTimeOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute lower_bound_time_point
        #   Defines the lower bound time point for the operation.
        #
        #   @return [HubspotSDK::Models::Crm::PublicDatePoint, HubspotSDK::Models::Crm::PublicIndexedTimePoint, HubspotSDK::Models::Crm::PublicPropertyReferencedTime]
        required :lower_bound_time_point,
                 union: -> { HubspotSDK::Crm::PublicRangedTimeOperation::LowerBoundTimePoint },
                 api_name: :lowerBoundTimePoint

        # @!attribute operation_type
        #   Specifies the type of operation (TIME_RANGED).
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #   Defines the operation to be applied within the time range (IS_BETWEEN,
        #   IS_NOT_BETWEEN).
        #
        #   @return [String]
        required :operator, String

        # @!attribute type
        #   Specifies the type of operation (TIME_RANGED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicRangedTimeOperation::Type]
        required :type, enum: -> { HubspotSDK::Crm::PublicRangedTimeOperation::Type }

        # @!attribute upper_bound_time_point
        #   Defines the upper bound time point for the operation.
        #
        #   @return [HubspotSDK::Models::Crm::PublicDatePoint, HubspotSDK::Models::Crm::PublicIndexedTimePoint, HubspotSDK::Models::Crm::PublicPropertyReferencedTime]
        required :upper_bound_time_point,
                 union: -> { HubspotSDK::Crm::PublicRangedTimeOperation::UpperBoundTimePoint },
                 api_name: :upperBoundTimePoint

        # @!attribute lower_bound_endpoint_behavior
        #   Describes the behavior at the lower bound endpoint of the time range.
        #
        #   @return [String, nil]
        optional :lower_bound_endpoint_behavior, String, api_name: :lowerBoundEndpointBehavior

        # @!attribute property_parser
        #   Specifies the parser used for the property in the operation.
        #
        #   @return [String, nil]
        optional :property_parser, String, api_name: :propertyParser

        # @!attribute upper_bound_endpoint_behavior
        #   Describes the behavior at the upper bound endpoint of the time range.
        #
        #   @return [String, nil]
        optional :upper_bound_endpoint_behavior, String, api_name: :upperBoundEndpointBehavior

        # @!method initialize(include_objects_with_no_value_set:, lower_bound_time_point:, operation_type:, operator:, type:, upper_bound_time_point:, lower_bound_endpoint_behavior: nil, property_parser: nil, upper_bound_endpoint_behavior: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicRangedTimeOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param lower_bound_time_point [HubspotSDK::Models::Crm::PublicDatePoint, HubspotSDK::Models::Crm::PublicIndexedTimePoint, HubspotSDK::Models::Crm::PublicPropertyReferencedTime] Defines the lower bound time point for the operation.
        #
        #   @param operation_type [String] Specifies the type of operation (TIME_RANGED).
        #
        #   @param operator [String] Defines the operation to be applied within the time range (IS_BETWEEN, IS_NOT_BE
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PublicRangedTimeOperation::Type] Specifies the type of operation (TIME_RANGED).
        #
        #   @param upper_bound_time_point [HubspotSDK::Models::Crm::PublicDatePoint, HubspotSDK::Models::Crm::PublicIndexedTimePoint, HubspotSDK::Models::Crm::PublicPropertyReferencedTime] Defines the upper bound time point for the operation.
        #
        #   @param lower_bound_endpoint_behavior [String] Describes the behavior at the lower bound endpoint of the time range.
        #
        #   @param property_parser [String] Specifies the parser used for the property in the operation.
        #
        #   @param upper_bound_endpoint_behavior [String] Describes the behavior at the upper bound endpoint of the time range.

        # Defines the lower bound time point for the operation.
        #
        # @see HubspotSDK::Models::Crm::PublicRangedTimeOperation#lower_bound_time_point
        module LowerBoundTimePoint
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicDatePoint }

          variant -> { HubspotSDK::Crm::PublicIndexedTimePoint }

          variant -> { HubspotSDK::Crm::PublicPropertyReferencedTime }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicDatePoint, HubspotSDK::Models::Crm::PublicIndexedTimePoint, HubspotSDK::Models::Crm::PublicPropertyReferencedTime)]
        end

        # Specifies the type of operation (TIME_RANGED).
        #
        # @see HubspotSDK::Models::Crm::PublicRangedTimeOperation#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TIME_RANGED = :TIME_RANGED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the upper bound time point for the operation.
        #
        # @see HubspotSDK::Models::Crm::PublicRangedTimeOperation#upper_bound_time_point
        module UpperBoundTimePoint
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicDatePoint }

          variant -> { HubspotSDK::Crm::PublicIndexedTimePoint }

          variant -> { HubspotSDK::Crm::PublicPropertyReferencedTime }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicDatePoint, HubspotSDK::Models::Crm::PublicIndexedTimePoint, HubspotSDK::Models::Crm::PublicPropertyReferencedTime)]
        end
      end
    end
  end
end
