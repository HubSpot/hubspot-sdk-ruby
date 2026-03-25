# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class ObjectFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #
        #   @return [Object]
        required :properties, HubspotSDK::Internal::Type::Unknown

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::ObjectFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::ObjectFieldSchema::Type }

        # @!method initialize(properties:, type:)
        #   @param properties [Object]
        #   @param type [Symbol, HubspotSDK::Models::Automation::ObjectFieldSchema::Type]

        # @see HubspotSDK::Models::Automation::ObjectFieldSchema#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          OBJECT = :OBJECT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
