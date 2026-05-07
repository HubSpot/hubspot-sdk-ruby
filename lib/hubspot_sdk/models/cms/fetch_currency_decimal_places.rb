# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class FetchCurrencyDecimalPlaces < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::FetchCurrencyDecimalPlaces::Operator }

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

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          FETCH_CURRENCY_DECIMAL_PLACES = :FETCH_CURRENCY_DECIMAL_PLACES

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
