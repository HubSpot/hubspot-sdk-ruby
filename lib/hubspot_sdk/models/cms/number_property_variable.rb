# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class NumberPropertyVariable < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::NumberPropertyVariable::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::NumberPropertyVariable::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::NumberPropertyVariable::Operator]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubSpotSDK::Models::Cms::NumberPropertyVariable#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          NUMBER_PROPERTY_VARIABLE = :NUMBER_PROPERTY_VARIABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
