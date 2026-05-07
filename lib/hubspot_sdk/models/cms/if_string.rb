# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class IfString < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute enclosed_in_parentheses
        #
        #   @return [Boolean]
        required :enclosed_in_parentheses,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :enclosedInParentheses

        # @!attribute if_expression
        #
        #   @return [Object]
        required :if_expression, HubSpotSDK::Internal::Type::Unknown, api_name: :ifExpression

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::IfString::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::IfString::Operator }

        # @!attribute else_expression
        #
        #   @return [Object, nil]
        optional :else_expression, HubSpotSDK::Internal::Type::Unknown, api_name: :elseExpression

        # @!attribute inputs
        #
        #   @return [Array<Object>, nil]
        optional :inputs, HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]

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
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::IfString::Operator]
        #   @param else_expression [Object]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubSpotSDK::Models::Cms::IfString#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          IF_STRING = :IF_STRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
