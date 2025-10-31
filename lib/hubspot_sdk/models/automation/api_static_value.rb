# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute static_value
        #
        #   @return [String]
        required :static_value, String, api_name: :staticValue

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticValue::Type }

        # @!method initialize(static_value:, type:)
        #   @param static_value [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticValue::Type]

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
