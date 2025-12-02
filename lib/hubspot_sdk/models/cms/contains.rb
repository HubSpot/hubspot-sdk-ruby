# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Contains < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Contains::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::Contains::Operator }

        # @!attribute string_to_check
        #
        #   @return [Hash{Symbol=>Object}]
        required :string_to_check,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :stringToCheck

        # @!attribute inputs
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :inputs,
                 HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::Contains::Operator]
        #   @param string_to_check [Hash{Symbol=>Object}]
        #   @param inputs [Array<Hash{Symbol=>Object}>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::Contains#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          CONTAINS = :CONTAINS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
