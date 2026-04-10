# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BooleanTargetPropertyVariable < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::BooleanTargetPropertyVariable::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable::Operator]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          BOOLEAN_TARGET_PROPERTY_VARIABLE = :BOOLEAN_TARGET_PROPERTY_VARIABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
