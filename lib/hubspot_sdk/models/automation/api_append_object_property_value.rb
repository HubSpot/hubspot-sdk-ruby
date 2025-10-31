# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIAppendObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute append_property_name
        #
        #   @return [String]
        required :append_property_name, String, api_name: :appendPropertyName

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIAppendObjectPropertyValue::Type }

        # @!method initialize(append_property_name:, type:)
        #   @param append_property_name [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue::Type]

        # @see HubspotSDK::Models::Automation::APIAppendObjectPropertyValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          APPEND_OBJECT_PROPERTY = :APPEND_OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
