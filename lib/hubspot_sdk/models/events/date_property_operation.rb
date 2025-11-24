# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class DatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute include_objects_with_no_value_set
        #
        #   @return [Boolean]
        required :include_objects_with_no_value_set,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeObjectsWithNoValueSet

        # @!attribute month
        #
        #   @return [Symbol, HubspotSDK::Models::Events::DatePropertyOperation::Month]
        required :month, enum: -> { HubspotSDK::Events::DatePropertyOperation::Month }

        # @!attribute operation_type
        #
        #   @return [String]
        required :operation_type, String, api_name: :operationType

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Events::DatePropertyOperation::Operator]
        required :operator, enum: -> { HubspotSDK::Events::DatePropertyOperation::Operator }

        # @!attribute operator_name
        #
        #   @return [String]
        required :operator_name, String, api_name: :operatorName

        # @!attribute property_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::DatePropertyOperation::PropertyType]
        required :property_type,
                 enum: -> { HubspotSDK::Events::DatePropertyOperation::PropertyType },
                 api_name: :propertyType

        # @!attribute year
        #
        #   @return [Integer]
        required :year, Integer

        # @!attribute default_value
        #
        #   @return [String, nil]
        optional :default_value, String, api_name: :defaultValue

        # @!method initialize(day:, include_objects_with_no_value_set:, month:, operation_type:, operator:, operator_name:, property_type:, year:, default_value: nil)
        #   @param day [Integer]
        #   @param include_objects_with_no_value_set [Boolean]
        #   @param month [Symbol, HubspotSDK::Models::Events::DatePropertyOperation::Month]
        #   @param operation_type [String]
        #   @param operator [Symbol, HubspotSDK::Models::Events::DatePropertyOperation::Operator]
        #   @param operator_name [String]
        #   @param property_type [Symbol, HubspotSDK::Models::Events::DatePropertyOperation::PropertyType]
        #   @param year [Integer]
        #   @param default_value [String]

        # @see HubspotSDK::Models::Events::DatePropertyOperation#month
        module Month
          extend HubspotSDK::Internal::Type::Enum

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

        # @see HubspotSDK::Models::Events::DatePropertyOperation#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          AFTER = :AFTER
          BEFORE = :BEFORE
          EQUAL = :EQUAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::DatePropertyOperation#property_type
        module PropertyType
          extend HubspotSDK::Internal::Type::Enum

          DATE = :date

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
