# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class BooleanFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Specifies the field type as BOOLEAN, indicating that the field can hold a true
        #   or false value.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::BooleanFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::BooleanFieldSchema::Type }

        # @!method initialize(type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::BooleanFieldSchema} for more details.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::BooleanFieldSchema::Type] Specifies the field type as BOOLEAN, indicating that the field can hold a true o

        # Specifies the field type as BOOLEAN, indicating that the field can hold a true
        # or false value.
        #
        # @see HubspotSDK::Models::Automation::BooleanFieldSchema#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          BOOLEAN = :BOOLEAN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
