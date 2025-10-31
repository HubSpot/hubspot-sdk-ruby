# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicTimePointOperation < HubspotSDK::Internal::Type::BaseModel
      # @!attribute include_objects_with_no_value_set
      #
      #   @return [Boolean]
      required :include_objects_with_no_value_set,
               HubspotSDK::Internal::Type::Boolean,
               api_name: :includeObjectsWithNoValueSet

      # @!attribute operation_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicTimePointOperation::OperationType]
      required :operation_type,
               enum: -> { HubspotSDK::PublicTimePointOperation::OperationType },
               api_name: :operationType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute time_point
      #
      #   @return [HubspotSDK::Models::PublicDatePoint, HubspotSDK::Models::PublicIndexedTimePoint, HubspotSDK::Models::PublicPropertyReferencedTime]
      required :time_point,
               union: -> {
                 HubspotSDK::PublicTimePointOperation::TimePoint
               },
               api_name: :timePoint

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!attribute endpoint_behavior
      #
      #   @return [String, nil]
      optional :endpoint_behavior, String, api_name: :endpointBehavior

      # @!attribute property_parser
      #
      #   @return [String, nil]
      optional :property_parser, String, api_name: :propertyParser

      # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, time_point:, type:, endpoint_behavior: nil, property_parser: nil)
      #   @param include_objects_with_no_value_set [Boolean]
      #   @param operation_type [Symbol, HubspotSDK::Models::PublicTimePointOperation::OperationType]
      #   @param operator [String]
      #   @param time_point [HubspotSDK::Models::PublicDatePoint, HubspotSDK::Models::PublicIndexedTimePoint, HubspotSDK::Models::PublicPropertyReferencedTime]
      #   @param type [String]
      #   @param endpoint_behavior [String]
      #   @param property_parser [String]

      # @see HubspotSDK::Models::PublicTimePointOperation#operation_type
      module OperationType
        extend HubspotSDK::Internal::Type::Enum

        TIME_POINT = :TIME_POINT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicTimePointOperation#time_point
      module TimePoint
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
