# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIRelativeDateTimeValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute time_delay
        #
        #   @return [HubspotSDK::Models::Automation::APITimeDelay]
        required :time_delay, -> { HubspotSDK::Automation::APITimeDelay }, api_name: :timeDelay

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIRelativeDateTimeValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIRelativeDateTimeValue::Type }

        # @!method initialize(time_delay:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIRelativeDateTimeValue} for more details.
        #
        #   @param time_delay [HubspotSDK::Models::Automation::APITimeDelay]
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIRelativeDateTimeValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        # @see HubspotSDK::Models::Automation::APIRelativeDateTimeValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          RELATIVE_DATETIME = :RELATIVE_DATETIME

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
