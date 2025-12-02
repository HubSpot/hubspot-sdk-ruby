# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class SubtractTime < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::SubtractTime::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::SubtractTime::Operator }

        # @!attribute string_to_check
        #
        #   @return [Object]
        required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

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
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::SubtractTime::Operator]
        #   @param string_to_check [Object]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::SubtractTime#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          SUBTRACT_TIME = :SUBTRACT_TIME

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
