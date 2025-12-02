# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class FormatFullName < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::FormatFullName::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::FormatFullName::Operator }

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
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::FormatFullName::Operator]
        #   @param inputs [Array<Hash{Symbol=>Object}>]
        #   @param property_name [String]
        #   @param value [String]

        # @see HubspotSDK::Models::Cms::FormatFullName#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          FORMAT_FULL_NAME = :FORMAT_FULL_NAME

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
