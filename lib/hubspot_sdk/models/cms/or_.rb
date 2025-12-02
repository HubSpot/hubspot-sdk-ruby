# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Or < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enclosed_in_parentheses
        #
        #   @return [Boolean]
        required :enclosed_in_parentheses,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :enclosedInParentheses

        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Or::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::Or::Operator }

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
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
        #   @param enclosed_in_parentheses [Boolean]
        #   @param operator [Symbol, HubspotSDK::Models::Cms::Or::Operator]
        #   @param inputs [Array<Hash{Symbol=>Object}>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::Or#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          OR = :OR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
