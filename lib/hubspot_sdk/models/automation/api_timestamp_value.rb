# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APITimestampValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute timestamp_type
        #   Currently only EXECUTION_TIME is supported.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APITimestampValue::TimestampType]
        required :timestamp_type,
                 enum: -> { HubspotSDK::Automation::APITimestampValue::TimestampType },
                 api_name: :timestampType

        # @!attribute type
        #   This is the type of input value. This can be one of: "FIELD_DATA",
        #   "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        #   "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        #   "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APITimestampValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APITimestampValue::Type }

        # @!method initialize(timestamp_type:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APITimestampValue} for more details.
        #
        #   @param timestamp_type [Symbol, HubspotSDK::Models::Automation::APITimestampValue::TimestampType] Currently only EXECUTION_TIME is supported.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APITimestampValue::Type] This is the type of input value. This can be one of: "FIELD_DATA", "OBJECT_PROPE

        # Currently only EXECUTION_TIME is supported.
        #
        # @see HubspotSDK::Models::Automation::APITimestampValue#timestamp_type
        module TimestampType
          extend HubspotSDK::Internal::Type::Enum

          EXECUTION_TIME = :EXECUTION_TIME

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # This is the type of input value. This can be one of: "FIELD_DATA",
        # "OBJECT_PROPERTY", "STATIC_VALUE", "RELATIVE_DATETIME", "TIMESTAMP",
        # "INCREMENT", "FETCHED_OBJECT_PROPERTY", "APPEND_OBJECT_PROPERTY",
        # "STATIC_APPEND_VALUE", "ENROLLMENT_EVENT_PROPERTY"
        #
        # @see HubspotSDK::Models::Automation::APITimestampValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TIMESTAMP = :TIMESTAMP

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
