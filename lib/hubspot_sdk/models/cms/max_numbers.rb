# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class MaxNumbers < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::MaxNumbers::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::MaxNumbers::Operator }

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
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::MaxNumbers::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::MaxNumbers#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          MAX_NUMBERS = :MAX_NUMBERS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
