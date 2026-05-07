# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class SubtractTime < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::SubtractTime::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::SubtractTime::Operator }

        # @!attribute string_to_check
        #
        #   @return [Object]
        required :string_to_check, HubSpotSDK::Internal::Type::Unknown, api_name: :stringToCheck

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
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::SubtractTime::Operator]
        #   @param string_to_check [Object]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubSpotSDK::Models::Cms::SubtractTime#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          SUBTRACT_TIME = :SUBTRACT_TIME

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
