# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class IntegerFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of the field, which is set to INTEGER.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::IntegerFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::IntegerFieldSchema::Type }

        # @!attribute maximum
        #   The maximum value allowed for the integer field.
        #
        #   @return [Integer, nil]
        optional :maximum, Integer

        # @!attribute minimum
        #   The minimum value allowed for the integer field.
        #
        #   @return [Integer, nil]
        optional :minimum, Integer

        # @!method initialize(type:, maximum: nil, minimum: nil)
        #   @param type [Symbol, HubspotSDK::Models::Automation::IntegerFieldSchema::Type] The type of the field, which is set to INTEGER.
        #
        #   @param maximum [Integer] The maximum value allowed for the integer field.
        #
        #   @param minimum [Integer] The minimum value allowed for the integer field.

        # The type of the field, which is set to INTEGER.
        #
        # @see HubspotSDK::Models::Automation::IntegerFieldSchema#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          INTEGER = :INTEGER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
