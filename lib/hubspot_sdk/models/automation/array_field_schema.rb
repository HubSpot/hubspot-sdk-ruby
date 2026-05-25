# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class ArrayFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Object]
        required :items, HubSpotSDK::Internal::Type::Unknown

        # @!attribute type
        #   Specifies that the field is of type 'ARRAY'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::ArrayFieldSchema::Type]
        required :type, enum: -> { HubSpotSDK::Automation::ArrayFieldSchema::Type }

        # @!method initialize(items:, type:)
        #   @param items [Object]
        #
        #   @param type [Symbol, HubSpotSDK::Models::Automation::ArrayFieldSchema::Type] Specifies that the field is of type 'ARRAY'.

        # Specifies that the field is of type 'ARRAY'.
        #
        # @see HubSpotSDK::Models::Automation::ArrayFieldSchema#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ARRAY = :ARRAY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
