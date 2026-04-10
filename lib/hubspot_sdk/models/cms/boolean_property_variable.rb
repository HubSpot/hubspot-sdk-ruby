# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BooleanPropertyVariable < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::BooleanPropertyVariable::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::BooleanPropertyVariable::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::BooleanPropertyVariable::Operator]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubSpotSDK::Models::Cms::BooleanPropertyVariable#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          BOOLEAN_PROPERTY_VARIABLE = :BOOLEAN_PROPERTY_VARIABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
