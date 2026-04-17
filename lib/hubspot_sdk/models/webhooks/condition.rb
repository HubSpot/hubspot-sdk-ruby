# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class Condition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   A string representing the type of filter. Valid value is 'CRM_OBJECT_PROPERTY'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::Condition::FilterType]
        required :filter_type, enum: -> { HubSpotSDK::Webhooks::Condition::FilterType }, api_name: :filterType

        # @!attribute operator
        #   A string indicating the operation to apply for filtering. Valid values include
        #   'EQ', 'N_EQ', 'LT', 'GT', 'LTE', 'GTE', 'CONTAINS', 'STARTS_WITH', 'ENDS_WITH',
        #   'IN', 'NOT_IN', 'IS_EMPTY', and 'IS_NOT_EMPTY'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::Condition::Operator]
        required :operator, enum: -> { HubSpotSDK::Webhooks::Condition::Operator }

        # @!attribute property
        #   A string specifying the property of the CRM object to be filtered.
        #
        #   @return [String]
        required :property, String

        # @!attribute value
        #   A string representing the value to compare against the specified property when
        #   filtering.
        #
        #   @return [String, nil]
        optional :value, String

        # @!attribute values
        #   An array of strings, each representing a value to be used in the filtering
        #   operation.
        #
        #   @return [Array<String>, nil]
        optional :values, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(filter_type:, operator:, property:, value: nil, values: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::Condition} for more details.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Webhooks::Condition::FilterType] A string representing the type of filter. Valid value is 'CRM_OBJECT_PROPERTY'.
        #
        #   @param operator [Symbol, HubSpotSDK::Models::Webhooks::Condition::Operator] A string indicating the operation to apply for filtering. Valid values include '
        #
        #   @param property [String] A string specifying the property of the CRM object to be filtered.
        #
        #   @param value [String] A string representing the value to compare against the specified property when f
        #
        #   @param values [Array<String>] An array of strings, each representing a value to be used in the filtering opera

        # A string representing the type of filter. Valid value is 'CRM_OBJECT_PROPERTY'.
        #
        # @see HubSpotSDK::Models::Webhooks::Condition#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          CRM_OBJECT_PROPERTY = :CRM_OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # A string indicating the operation to apply for filtering. Valid values include
        # 'EQ', 'N_EQ', 'LT', 'GT', 'LTE', 'GTE', 'CONTAINS', 'STARTS_WITH', 'ENDS_WITH',
        # 'IN', 'NOT_IN', 'IS_EMPTY', and 'IS_NOT_EMPTY'.
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
