# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IfBoolean < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enclosed_in_parentheses
        #
        #   @return [Boolean]
        required :enclosed_in_parentheses,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :enclosedInParentheses

        # @!attribute if_expression
        #
        #   @return [HubspotSDK::Models::Cms::Expression]
        required :if_expression, union: -> { HubspotSDK::Cms::Expression }, api_name: :ifExpression

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::IfBoolean::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::IfBoolean::Operator }

        # @!attribute else_expression
        #
        #   @return [HubspotSDK::Models::Cms::Expression, nil]
        optional :else_expression, union: -> { HubspotSDK::Cms::Expression }, api_name: :elseExpression

        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::Expression>, nil]
        optional :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Cms::Expression] }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
        #   @param enclosed_in_parentheses [Boolean]
        #   @param if_expression [HubspotSDK::Models::Cms::Expression]
        #   @param operator [Symbol, HubspotSDK::Models::Cms::IfBoolean::Operator]
        #   @param else_expression [HubspotSDK::Models::Cms::Expression]
        #   @param inputs [Array<HubspotSDK::Models::Cms::Expression>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::IfBoolean#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          IF_BOOLEAN = :IF_BOOLEAN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
