# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class ObjectFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #   Contains the properties of the object.
        #
        #   @return [Object]
        required :properties, HubSpotSDK::Internal::Type::Unknown

        # @!attribute type
        #   Specifies the type of the field, which is 'OBJECT' by default.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::ObjectFieldSchema::Type]
        required :type, enum: -> { HubSpotSDK::Automation::ObjectFieldSchema::Type }

        # @!method initialize(properties:, type:)
        #   @param properties [Object] Contains the properties of the object.
        #
        #   @param type [Symbol, HubSpotSDK::Models::Automation::ObjectFieldSchema::Type] Specifies the type of the field, which is 'OBJECT' by default.

        # Specifies the type of the field, which is 'OBJECT' by default.
        #
        # @see HubSpotSDK::Models::Automation::ObjectFieldSchema#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          OBJECT = :OBJECT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
