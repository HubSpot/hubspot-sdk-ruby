# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicTimePointOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_objects_with_no_value_set
        #   Indicates whether objects with no value set for the property should be included
        #   in the operation.
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #   Specifies the type of operation (TIME_POINT).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicTimePointOperation::OperationType]
        required :operation_type,
                 enum: -> { HubspotSDK::Crm::PublicTimePointOperation::OperationType },
                 api_name: :operationType

        # @!attribute operator
        #   Specifies the operation to be applied within the time point operation
        #   (IS_BEFORE, IS_AFTER).
        #
        #   @return [String]
        required :operator, String

        # @!attribute time_point
        #   Defines the specific point in time for the operation, which can be a date,
        #   indexed time, or property-referenced time.
        #
        #   @return [HubspotSDK::Models::Crm::PublicDatePoint, HubspotSDK::Models::Crm::PublicIndexedTimePoint, HubspotSDK::Models::Crm::PublicPropertyReferencedTime]
        required :time_point,
                 union: -> { HubspotSDK::Crm::PublicTimePointOperation::TimePoint },
                 api_name: :timePoint

        # @!attribute type
        #   Defines the type of operation being performed.
        #
        #   @return [String]
        required :type, String

        # @!attribute endpoint_behavior
        #   Describes the behavior at the endpoint of the time point operation.
        #
        #   @return [String, nil]
        optional :endpoint_behavior, String, api_name: :endpointBehavior

        # @!attribute property_parser
        #   Specifies the parser used for interpreting the property in the operation.
        #
        #   @return [String, nil]
        optional :property_parser, String, api_name: :propertyParser

        # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, time_point:, type:, endpoint_behavior: nil, property_parser: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicTimePointOperation} for more details.
        #
        #   @param include_objects_with_no_value_set [Boolean] Indicates whether objects with no value set for the property should be included
        #
        #   @param operation_type [Symbol, HubspotSDK::Models::Crm::PublicTimePointOperation::OperationType] Specifies the type of operation (TIME_POINT).
        #
        #   @param operator [String] Specifies the operation to be applied within the time point operation (IS_BEFORE
        #
        #   @param time_point [HubspotSDK::Models::Crm::PublicDatePoint, HubspotSDK::Models::Crm::PublicIndexedTimePoint, HubspotSDK::Models::Crm::PublicPropertyReferencedTime] Defines the specific point in time for the operation, which can be a date, index
        #
        #   @param type [String] Defines the type of operation being performed.
        #
        #   @param endpoint_behavior [String] Describes the behavior at the endpoint of the time point operation.
        #
        #   @param property_parser [String] Specifies the parser used for interpreting the property in the operation.

        # Specifies the type of operation (TIME_POINT).
        #
        # @see HubspotSDK::Models::Crm::PublicTimePointOperation#operation_type
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TIME_POINT = :TIME_POINT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the specific point in time for the operation, which can be a date,
        # indexed time, or property-referenced time.
        #
        # @see HubspotSDK::Models::Crm::PublicTimePointOperation#time_point
        module TimePoint
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
