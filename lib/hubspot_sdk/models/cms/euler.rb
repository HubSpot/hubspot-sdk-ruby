# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Euler < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::Euler::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::Euler::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::Euler::Operator]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubSpotSDK::Models::Cms::Euler#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          EULER = :EULER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
