# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class SimplePublicObjectInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #   Key value pairs representing the properties of the object.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!method initialize(properties:)
        #   Represents the input required to create or update a CRM object, containing an
        #   object with property names and their corresponding values.
        #
        #   @param properties [Hash{Symbol=>String}] Key value pairs representing the properties of the object.
      end
    end
  end
end
