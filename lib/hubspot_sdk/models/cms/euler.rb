# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Euler < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Euler::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::Euler::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::Euler::Operator]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::Euler#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          EULER = :EULER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
