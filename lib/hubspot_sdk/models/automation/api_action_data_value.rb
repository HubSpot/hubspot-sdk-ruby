# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIActionDataValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #   Which action to pull data from.
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute data_key
        #   The output field name for that action
        #
        #   @return [String]
        required :data_key, String, api_name: :dataKey

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIActionDataValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIActionDataValue::Type }

        # @!method initialize(action_id:, data_key:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIActionDataValue} for more details.
        #
        #   @param action_id [String] Which action to pull data from.
        #
        #   @param data_key [String] The output field name for that action
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIActionDataValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        # @see HubspotSDK::Models::Automation::APIActionDataValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          FIELD_DATA = :FIELD_DATA

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
