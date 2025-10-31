# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class TimePointOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute endpoint_behavior
        #
        #   @return [Symbol, HubspotSDK::Models::Events::TimePointOperation::EndpointBehavior]
        required :endpoint_behavior,
                 enum: -> { HubspotSDK::Events::TimePointOperation::EndpointBehavior },
                 api_name: :endpointBehavior

        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Events::TimePointOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::TimePointOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_parser
        #
        #   @return [Symbol, HubspotSDK::Models::Events::TimePointOperation::PropertyParser]
        required :property_parser,
                 enum: -> { HubspotSDK::Events::TimePointOperation::PropertyParser },
                 api_name: :propertyParser

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::TimePointOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::TimePointOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute time_point
        #
        #   @return [HubspotSDK::Models::Events::DatePoint, HubspotSDK::Models::Events::IndexedTimePoint, HubspotSDK::Models::Events::PropertyReferencedTime]
        required :time_point,
                 union: -> { HubspotSDK::Events::TimePointOperation::TimePoint },
                 api_name: :timePoint

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!method initialize(endpoint_behavior:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_parser:, property_type:, time_point:, type:, default_value: nil)
        #   @param endpoint_behavior [Symbol, HubspotSDK::Models::Events::TimePointOperation::EndpointBehavior]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::TimePointOperation::Operator]
        #   @param operator_name [String]
        #   @param property_parser [Symbol, HubspotSDK::Models::Events::TimePointOperation::PropertyParser]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::TimePointOperation::PropertyType]
        #   @param time_point [HubspotSDK::Models::Events::DatePoint, HubspotSDK::Models::Events::IndexedTimePoint, HubspotSDK::Models::Events::PropertyReferencedTime]
        #   @param type [String]
        #   @param default_value [String]

        # @see HubspotSDK::Models::Events::TimePointOperation#endpoint_behavior
        module EndpointBehavior
          extend HubspotSDK::Internal::Type::Enum

          INCLUSIVE = :INCLUSIVE
          EXCLUSIVE = :EXCLUSIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::TimePointOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IS_BEFORE = :IS_BEFORE
          IS_AFTER = :IS_AFTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::TimePointOperation#property_parser
        module PropertyParser
          extend HubspotSDK::Internal::Type::Enum

          VALUE = :VALUE
          UPDATED_AT = :UPDATED_AT
          ANNIVERSARY = :ANNIVERSARY
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::TimePointOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          TIMEPOINT = :timepoint

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::TimePointOperation#time_point
        module TimePoint
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
