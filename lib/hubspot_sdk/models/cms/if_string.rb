# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IfString < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enclosed_in_parentheses
        #
        #   @return [Boolean]
        required :enclosed_in_parentheses,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :enclosedInParentheses

        # @!attribute if_expression
        #
        #   @return [Object]
        required :if_expression, HubspotSDK::Internal::Type::Unknown, api_name: :ifExpression

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::IfString::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::IfString::Operator }

        # @!attribute else_expression
        #
        #   @return [Object, nil]
        optional :else_expression, HubspotSDK::Internal::Type::Unknown, api_name: :elseExpression

        # @!attribute inputs
        #
        #   @return [Array<Object>, nil]
        optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
        #   @param enclosed_in_parentheses [Boolean]
        #   @param if_expression [Object]
        #   @param operator [Symbol, HubspotSDK::Models::Cms::IfString::Operator]
        #   @param else_expression [Object]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubspotSDK::Models::Cms::IfString#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IF_STRING = :IF_STRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
