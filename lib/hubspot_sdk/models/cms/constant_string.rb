# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ConstantString < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::ConstantString::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::ConstantString::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::ConstantString::Operator]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubSpotSDK::Models::Cms::ConstantString#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          CONSTANT_STRING = :CONSTANT_STRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
