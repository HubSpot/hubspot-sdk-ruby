# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class And < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enclosed_in_parentheses
        #
        #   @return [Boolean]
        required :enclosed_in_parentheses,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :enclosedInParentheses

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::And::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::And::Operator }

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

        # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
        #   @param enclosed_in_parentheses [Boolean]
        #   @param operator [Symbol, HubspotSDK::Models::Cms::And::Operator]
        #   @param inputs [Array<HubspotSDK::Models::Cms::Expression>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::And#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          AND = :AND

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
