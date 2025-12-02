# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class StringLength < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::StringLength::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::StringLength::Operator }

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
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::StringLength::Operator]
        #   @param inputs [Array<HubspotSDK::Models::Cms::Expression>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::StringLength#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          STRING_LENGTH = :STRING_LENGTH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
