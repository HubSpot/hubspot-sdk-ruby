# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticAppendValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute static_append_value
        #
        #   @return [String]
        required :static_append_value, String, api_name: :staticAppendValue

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticAppendValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticAppendValue::Type }

        # @!method initialize(static_append_value:, type:)
        #   @param static_append_value [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticAppendValue::Type]

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
