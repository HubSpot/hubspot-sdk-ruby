# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIActionDataValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute data_key
        #
        #   @return [String]
        required :data_key, String, api_name: :dataKey

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIActionDataValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIActionDataValue::Type }

        # @!method initialize(action_id:, data_key:, type:)
        #   @param action_id [String]
        #   @param data_key [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIActionDataValue::Type]

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
