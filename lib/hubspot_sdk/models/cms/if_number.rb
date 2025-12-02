# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IfNumber < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enclosed_in_parentheses
        #
        #   @return [Boolean]
        required :enclosed_in_parentheses,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :enclosedInParentheses

        # @!attribute if_expression
        #
        #   @return [Hash{Symbol=>Object}]
        required :if_expression,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :ifExpression

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::IfNumber::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::IfNumber::Operator }

        # @!attribute else_expression
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :else_expression,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :elseExpression

        # @!attribute inputs
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :inputs,
                 HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
        #   @param enclosed_in_parentheses [Boolean]
        #   @param if_expression [Hash{Symbol=>Object}]
        #   @param operator [Symbol, HubspotSDK::Models::Cms::IfNumber::Operator]
        #   @param else_expression [Hash{Symbol=>Object}]
        #   @param inputs [Array<Hash{Symbol=>Object}>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::IfNumber#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IF_NUMBER = :IF_NUMBER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
