# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class TimePointOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute endpoint_behavior
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::TimePointOperation::EndpointBehavior]
        required :endpoint_behavior,
                 enum: -> { HubSpotSDK::Events::TimePointOperation::EndpointBehavior },
                 api_name: :endpointBehavior

        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::TimePointOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::TimePointOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_parser
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::TimePointOperation::PropertyParser]
        required :property_parser,
                 enum: -> { HubSpotSDK::Events::TimePointOperation::PropertyParser },
                 api_name: :propertyParser

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::TimePointOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::TimePointOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute time_point
        #
        #   @return [HubSpotSDK::Models::Events::DatePoint, HubSpotSDK::Models::Events::IndexedTimePoint, HubSpotSDK::Models::Events::PropertyReferencedTime]
        required :time_point,
                 union: -> { HubSpotSDK::Events::TimePointOperation::TimePoint },
                 api_name: :timePoint

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(endpoint_behavior:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_parser:, property_type:, time_point:, type:, default_value: nil, render_spec: nil)
        #   @param endpoint_behavior [Symbol, HubSpotSDK::Models::Events::TimePointOperation::EndpointBehavior]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::TimePointOperation::Operator]
        #   @param operator_name [String]
        #   @param property_parser [Symbol, HubSpotSDK::Models::Events::TimePointOperation::PropertyParser]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::TimePointOperation::PropertyType]
        #   @param time_point [HubSpotSDK::Models::Events::DatePoint, HubSpotSDK::Models::Events::IndexedTimePoint, HubSpotSDK::Models::Events::PropertyReferencedTime]
        #   @param type [String]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::TimePointOperation#endpoint_behavior
        module EndpointBehavior
          extend HubSpotSDK::Internal::Type::Enum

          EXCLUSIVE = :EXCLUSIVE
          INCLUSIVE = :INCLUSIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::TimePointOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IS_AFTER = :IS_AFTER
          IS_BEFORE = :IS_BEFORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::TimePointOperation#property_parser
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

        # @see HubSpotSDK::Models::Events::TimePointOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          TIMEPOINT = :timepoint

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::TimePointOperation#time_point
        module TimePoint
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
