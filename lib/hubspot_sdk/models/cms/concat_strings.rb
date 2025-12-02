# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ConcatStrings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::ConcatStrings::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::ConcatStrings::Operator }

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
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::ConcatStrings::Operator]
        #   @param inputs [Array<HubspotSDK::Models::Cms::Expression>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubspotSDK::Models::Cms::ConcatStrings#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          CONCAT_STRINGS = :CONCAT_STRINGS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
