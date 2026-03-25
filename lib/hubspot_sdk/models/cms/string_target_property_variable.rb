# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class StringTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::StringTargetPropertyVariable::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::StringTargetPropertyVariable::Operator }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::StringTargetPropertyVariable::Operator]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubspotSDK::Models::Cms::StringTargetPropertyVariable#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          STRING_TARGET_PROPERTY_VARIABLE = :STRING_TARGET_PROPERTY_VARIABLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
