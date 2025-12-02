# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BooleanTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::BooleanTargetPropertyVariable::Operator }

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
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::BooleanTargetPropertyVariable#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          BOOLEAN_TARGET_PROPERTY_VARIABLE = :BOOLEAN_TARGET_PROPERTY_VARIABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
