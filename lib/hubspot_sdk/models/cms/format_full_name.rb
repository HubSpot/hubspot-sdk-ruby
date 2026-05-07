# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class FormatFullName < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::FormatFullName::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::FormatFullName::Operator }

        # @!attribute inputs
        #
        #   @return [Array<Object>, nil]
        optional :inputs, HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::FormatFullName::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubSpotSDK::Models::Cms::FormatFullName#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          FORMAT_FULL_NAME = :FORMAT_FULL_NAME

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
