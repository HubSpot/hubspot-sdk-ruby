# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class Filter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #   The comparison operator used in the filter, such as "EQ" or "GT".
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::Filter::Operator]
        required :operator, enum: -> { HubspotSDK::Crm::Filter::Operator }

        # @!attribute property_name
        #   The name of the property to apply the filter to.
        #
        #   @return [String]
        required :property_name, String, api_name: :propertyName

        # @!attribute high_value
        #   The upper boundary value when using ranged-based filters.
        #
        #   @return [String, nil]
        optional :high_value, String, api_name: :highValue

        # @!attribute value
        #   The value to match against the property.
        #
        #   @return [String, nil]
        optional :value, String

        # @!attribute values
        #   The values to match against the property.
        #
        #   @return [Array<String>, nil]
        optional :values, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(operator:, property_name:, high_value: nil, value: nil, values: nil)
        #   Defines a single condition for searching CRM objects, specifying the property to
        #   filter on, the operator to use (such as equals, greater than, or contains), and
        #   the value(s) to compare against.
        #
        #   @param operator [Symbol, HubspotSDK::Models::Crm::Filter::Operator] The comparison operator used in the filter, such as "EQ" or "GT".
        #
        #   @param property_name [String] The name of the property to apply the filter to.
        #
        #   @param high_value [String] The upper boundary value when using ranged-based filters.
        #
        #   @param value [String] The value to match against the property.
        #
        #   @param values [Array<String>] The values to match against the property.

        # The comparison operator used in the filter, such as "EQ" or "GT".
        #
        # @see HubspotSDK::Models::Crm::Filter#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          EQ = :EQ
          NEQ = :NEQ
          LT = :LT
          LTE = :LTE
          GT = :GT
          GTE = :GTE
          BETWEEN = :BETWEEN
          IN = :IN
          NOT_IN = :NOT_IN
          HAS_PROPERTY = :HAS_PROPERTY
          NOT_HAS_PROPERTY = :NOT_HAS_PROPERTY
          CONTAINS_TOKEN = :CONTAINS_TOKEN
          NOT_CONTAINS_TOKEN = :NOT_CONTAINS_TOKEN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
