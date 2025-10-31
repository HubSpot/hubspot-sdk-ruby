# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String, api_name: :propertyName

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIObjectPropertyValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIObjectPropertyValue::Type }

        # @!method initialize(property_name:, type:)
        #   @param property_name [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIObjectPropertyValue::Type]

        # @see HubspotSDK::Models::Automation::APIObjectPropertyValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          OBJECT_PROPERTY = :OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
