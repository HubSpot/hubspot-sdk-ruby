# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ConstantNumber < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::ConstantNumber::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::ConstantNumber::Operator }

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
        #   @param operator [Symbol, HubspotSDK::Models::Cms::ConstantNumber::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::ConstantNumber#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          CONSTANT_NUMBER = :CONSTANT_NUMBER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
