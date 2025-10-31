# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIIncrementValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute increment_amount
        #   The amount be which to increment
        #
        #   @return [Float]
        required :increment_amount, Float, api_name: :incrementAmount

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIIncrementValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIIncrementValue::Type }

        # @!method initialize(increment_amount:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIIncrementValue} for more details.
        #
        #   @param increment_amount [Float] The amount be which to increment
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIIncrementValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        # @see HubspotSDK::Models::Automation::APIIncrementValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          INCREMENT = :INCREMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
