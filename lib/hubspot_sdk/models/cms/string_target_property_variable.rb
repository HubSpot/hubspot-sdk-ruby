# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class StringTargetPropertyVariable < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::StringTargetPropertyVariable::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::StringTargetPropertyVariable::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::StringTargetPropertyVariable::Operator]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubSpotSDK::Models::Cms::StringTargetPropertyVariable#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          STRING_TARGET_PROPERTY_VARIABLE = :STRING_TARGET_PROPERTY_VARIABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
