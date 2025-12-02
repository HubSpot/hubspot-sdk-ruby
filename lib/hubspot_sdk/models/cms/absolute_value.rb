# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class AbsoluteValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::AbsoluteValue::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::AbsoluteValue::Operator }

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
        #   @param operator [Symbol, HubspotSDK::Models::Cms::AbsoluteValue::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::AbsoluteValue#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          ABSOLUTE_VALUE = :ABSOLUTE_VALUE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
