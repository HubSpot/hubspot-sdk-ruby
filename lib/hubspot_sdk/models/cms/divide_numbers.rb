# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class DivideNumbers < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute enclosed_in_parentheses
        #
        #   @return [Boolean]
        required :enclosed_in_parentheses,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :enclosedInParentheses

        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::DivideNumbers::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::DivideNumbers::Operator }

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
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
        #   @param enclosed_in_parentheses [Boolean]
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::DivideNumbers::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubSpotSDK::Models::Cms::DivideNumbers#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          DIVIDE_NUMBERS = :DIVIDE_NUMBERS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
