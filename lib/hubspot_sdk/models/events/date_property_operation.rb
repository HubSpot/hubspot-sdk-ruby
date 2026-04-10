# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class DatePropertyOperation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute day
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute month
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::DatePropertyOperation::Month]
        required :month, enum: -> { HubSpotSDK::Events::DatePropertyOperation::Month }

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::DatePropertyOperation::Operator]
        required :operator, enum: -> { HubSpotSDK::Events::DatePropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::DatePropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubSpotSDK::Events::DatePropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute year
        #
        #   @return [Integer]
        required :year, Integer

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!attribute render_spec
        #
        #   @return [String, nil]
        optional :render_spec, String, api_name: :renderSpec

        # @!method initialize(day:, include_objects_with_no_value_set:, month:, operation_type:, operator:, operator_name:, property_type:, year:, default_value: nil, render_spec: nil)
        #   @param day [Integer]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param month [Symbol, HubSpotSDK::Models::Events::DatePropertyOperation::Month]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubSpotSDK::Models::Events::DatePropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubSpotSDK::Models::Events::DatePropertyOperation::PropertyType]
        #   @param year [Integer]
        #   @param default_value [String]
        #   @param render_spec [String]

        # @see HubSpotSDK::Models::Events::DatePropertyOperation#month
        module Month
          extend HubSpotSDK::Internal::Type::Enum

          APR = :APR
          AUG = :AUG
          DEC = :DEC
          FEB = :FEB
          JAN = :JAN
          JUL = :JUL
          JUN = :JUN
          MAR = :MAR
          MAY = :MAY
          NOV = :NOV
          OCT = :OCT
          SEP = :SEP

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::DatePropertyOperation#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          AFTER = :AFTER
          BEFORE = :BEFORE
          EQUAL = :EQUAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::DatePropertyOperation#property_type
        module PropertyType
          extend HubSpotSDK::Internal::Type::Enum

          DATE = :date

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
