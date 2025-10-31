# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticAppendValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute static_append_value
        #   The value to append
        #
        #   @return [String]
        required :static_append_value, String, api_name: :staticAppendValue

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticAppendValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticAppendValue::Type }

        # @!method initialize(static_append_value:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIStaticAppendValue} for more details.
        #
        #   @param static_append_value [String] The value to append
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticAppendValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        # @see HubspotSDK::Models::Automation::APIStaticAppendValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STATIC_APPEND_VALUE = :STATIC_APPEND_VALUE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
