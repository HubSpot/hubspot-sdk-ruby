# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class NumberTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::NumberTargetPropertyVariable::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::NumberTargetPropertyVariable::Operator }

        # @!attribute inputs
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :inputs,
                 HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::NumberTargetPropertyVariable::Operator]
        #   @param inputs [Array<Hash{Symbol=>Object}>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::NumberTargetPropertyVariable#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          NUMBER_TARGET_PROPERTY_VARIABLE = :NUMBER_TARGET_PROPERTY_VARIABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
