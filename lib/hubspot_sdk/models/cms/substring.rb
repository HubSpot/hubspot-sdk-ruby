# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Substring < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Substring::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::Substring::Operator }

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
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::Substring::Operator]
        #   @param string_to_check [Object]
        #   @param inputs [Array<Object>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubspotSDK::Models::Cms::Substring#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          SUBSTRING = :SUBSTRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
