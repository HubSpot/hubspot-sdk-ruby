# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIFetchedObjectPropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute property_token
        #
        #   @return [String]
        required :property_token, String, api_name: :propertyToken

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIFetchedObjectPropertyValue::Type }

        # @!method initialize(property_token:, type:)
        #   @param property_token [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue::Type]

        # @see HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          FETCHED_OBJECT_PROPERTY = :FETCHED_OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
