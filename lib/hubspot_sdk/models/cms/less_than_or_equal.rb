# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class LessThanOrEqual < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::LessThanOrEqual::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::LessThanOrEqual::Operator }

        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::Expression>, nil]
        optional :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Cms::Expression] }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::LessThanOrEqual::Operator]
        #   @param inputs [Array<HubspotSDK::Models::Cms::Expression>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::LessThanOrEqual#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          LESS_THAN_OR_EQUAL = :LESS_THAN_OR_EQUAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
