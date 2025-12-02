# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class NumberEquals < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::NumberEquals::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::NumberEquals::Operator }

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
        #   @param operator [Symbol, HubspotSDK::Models::Cms::NumberEquals::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::NumberEquals#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          NUMBER_EQUALS = :NUMBER_EQUALS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
