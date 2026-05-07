# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class StringEquals < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::StringEquals::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::StringEquals::Operator }

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
        #   @return [Boolean, nil]
        optional :value, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::StringEquals::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubSpotSDK::Models::Cms::StringEquals#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          STRING_EQUALS = :STRING_EQUALS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
