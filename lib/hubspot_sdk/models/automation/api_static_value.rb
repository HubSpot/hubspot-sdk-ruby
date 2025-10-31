# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute static_value
        #   A static value to use as the input
        #
        #   @return [String]
        required :static_value, String, api_name: :staticValue

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticValue::Type }

        # @!method initialize(static_value:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIStaticValue} for more details.
        #
        #   @param static_value [String] A static value to use as the input
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        # @see HubspotSDK::Models::Automation::APIStaticValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STATIC_VALUE = :STATIC_VALUE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
