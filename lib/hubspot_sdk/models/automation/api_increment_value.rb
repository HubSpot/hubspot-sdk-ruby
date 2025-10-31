# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIIncrementValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute increment_amount
        #
        #   @return [Float]
        required :increment_amount, Float, api_name: :incrementAmount

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIIncrementValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIIncrementValue::Type }

        # @!method initialize(increment_amount:, type:)
        #   @param increment_amount [Float]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIIncrementValue::Type]

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
