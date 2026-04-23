# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class Condition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   A string indicating the type of filter being applied. Valid value is
        #   'CRM_OBJECT_PROPERTY'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::Condition::FilterType]
        required :filter_type, enum: -> { HubSpotSDK::Webhooks::Condition::FilterType }, api_name: :filterType

        # @!attribute operator
        #   A string specifying the operation to be performed in the condition. Valid values
        #   include 'EQ', 'N_EQ', 'LT', 'GT', 'LTE', 'GTE', 'CONTAINS', 'STARTS_WITH',
        #   'ENDS_WITH', 'IN', 'NOT_IN', 'IS_EMPTY', and 'IS_NOT_EMPTY'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::Condition::Operator]
        required :operator, enum: -> { HubSpotSDK::Webhooks::Condition::Operator }

        # @!attribute property
        #   A string representing the specific property of the CRM object that the condition
        #   applies to.
        #
        #   @return [String]
        required :property, String

        # @!attribute value
        #   A string representing the value to be compared against the specified property
        #   when using single-value operators.
        #
        #   @return [String, nil]
        optional :value, String

        # @!attribute values
        #   An array of strings used to specify multiple values for comparison when using
        #   operators that support multiple values, such as 'IN' or 'NOT_IN'.
        #
        #   @return [Array<String>, nil]
        optional :values, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(filter_type:, operator:, property:, value: nil, values: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::Condition} for more details.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Webhooks::Condition::FilterType] A string indicating the type of filter being applied. Valid value is 'CRM_OBJECT
        #
        #   @param operator [Symbol, HubSpotSDK::Models::Webhooks::Condition::Operator] A string specifying the operation to be performed in the condition. Valid values
        #
        #   @param property [String] A string representing the specific property of the CRM object that the condition
        #
        #   @param value [String] A string representing the value to be compared against the specified property wh
        #
        #   @param values [Array<String>] An array of strings used to specify multiple values for comparison when using op

        # A string indicating the type of filter being applied. Valid value is
        # 'CRM_OBJECT_PROPERTY'.
        #
        # @see HubSpotSDK::Models::Webhooks::Condition#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          CRM_OBJECT_PROPERTY = :CRM_OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # A string specifying the operation to be performed in the condition. Valid values
        # include 'EQ', 'N_EQ', 'LT', 'GT', 'LTE', 'GTE', 'CONTAINS', 'STARTS_WITH',
        # 'ENDS_WITH', 'IN', 'NOT_IN', 'IS_EMPTY', and 'IS_NOT_EMPTY'.
        #
        # @see HubSpotSDK::Models::Webhooks::Condition#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          CONTAINS = :CONTAINS
          ENDS_WITH = :ENDS_WITH
          EQ = :EQ
          GT = :GT
          GTE = :GTE
          IN = :IN
          IS_EMPTY = :IS_EMPTY
          IS_NOT_EMPTY = :IS_NOT_EMPTY
          LT = :LT
          LTE = :LTE
          N_EQ = :N_EQ
          NOT_IN = :NOT_IN
          STARTS_WITH = :STARTS_WITH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
