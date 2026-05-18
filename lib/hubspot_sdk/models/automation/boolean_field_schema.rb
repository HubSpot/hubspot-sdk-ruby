# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class BooleanFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Specifies the field type as BOOLEAN, indicating that the field can hold a true
        #   or false value.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::BooleanFieldSchema::Type]
        required :type, enum: -> { HubSpotSDK::Automation::BooleanFieldSchema::Type }

        # @!method initialize(type:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::BooleanFieldSchema} for more details.
        #
        #   @param type [Symbol, HubSpotSDK::Models::Automation::BooleanFieldSchema::Type] Specifies the field type as BOOLEAN, indicating that the field can hold a true o

        # Specifies the field type as BOOLEAN, indicating that the field can hold a true
        # or false value.
        #
        # @see HubSpotSDK::Models::Automation::BooleanFieldSchema#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          ARRAY = :ARRAY
          BOOLEAN = :BOOLEAN
          DOUBLE = :DOUBLE
          INTEGER = :INTEGER
          LONG = :LONG
          OBJECT = :OBJECT
          STRING = :STRING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
