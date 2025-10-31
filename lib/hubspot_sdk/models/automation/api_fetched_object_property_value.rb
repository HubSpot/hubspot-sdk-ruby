# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIFetchedObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute property_token
        #   The token to use to identify the object property to use
        #
        #   @return [String]
        required :property_token, String, api_name: :propertyToken

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIFetchedObjectPropertyValue::Type }

        # @!method initialize(property_token:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue} for more
        #   details.
        #
        #   @param property_token [String] The token to use to identify the object property to use
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        # @see HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          FETCHED_OBJECT_PROPERTY = :FETCHED_OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
