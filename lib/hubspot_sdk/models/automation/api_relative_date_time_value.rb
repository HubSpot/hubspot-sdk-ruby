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
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIRelativeDateTimeValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIRelativeDateTimeValue::Type }

        # @!method initialize(time_delay:, type:)
        #   @param time_delay [HubspotSDK::Models::Automation::APITimeDelay]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIRelativeDateTimeValue::Type]

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
