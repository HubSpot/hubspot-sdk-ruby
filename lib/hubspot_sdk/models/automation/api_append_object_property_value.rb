# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIAppendObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute append_property_name
        #   The name of the property to append data from
        #
        #   @return [String]
        required :append_property_name, String, api_name: :appendPropertyName

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIAppendObjectPropertyValue::Type }

        # @!method initialize(append_property_name:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIAppendObjectPropertyValue} for more details.
        #
        #   @param append_property_name [String] The name of the property to append data from
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
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
