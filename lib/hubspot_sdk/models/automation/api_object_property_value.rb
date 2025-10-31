# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute property_name
        #   The property name to pull data from.
        #
        #   @return [String]
        required :property_name, String, api_name: :propertyName

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIObjectPropertyValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIObjectPropertyValue::Type }

        # @!method initialize(property_name:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIObjectPropertyValue} for more details.
        #
        #   @param property_name [String] The property name to pull data from.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIObjectPropertyValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
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
