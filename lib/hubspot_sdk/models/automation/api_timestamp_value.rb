# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APITimestampValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute timestamp_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APITimestampValue::TimestampType]
        required :timestamp_type,
                 enum: -> { HubspotSDK::Automation::APITimestampValue::TimestampType },
                 api_name: :timestampType

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APITimestampValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APITimestampValue::Type }

        # @!method initialize(timestamp_type:, type:)
        #   @param timestamp_type [Symbol, HubspotSDK::Models::Automation::APITimestampValue::TimestampType]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APITimestampValue::Type]

        # @see HubspotSDK::Models::Automation::APITimestampValue#timestamp_type
        module TimestampType
          extend HubspotSDK::Internal::Type::Enum

          EXECUTION_TIME = :EXECUTION_TIME

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
