# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class UpperCase < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::UpperCase::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::UpperCase::Operator }

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
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::UpperCase::Operator]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubSpotSDK::Models::Cms::UpperCase#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          UPPER_CASE = :UPPER_CASE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
