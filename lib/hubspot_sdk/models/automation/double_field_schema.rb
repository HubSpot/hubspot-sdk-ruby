# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class DoubleFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   Indicates the field type as DOUBLE.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::DoubleFieldSchema::Type]
        required :type, enum: -> { HubSpotSDK::Automation::DoubleFieldSchema::Type }

        # @!attribute maximum
        #   The maximum allowable value for the double field.
        #
        #   @return [Float, nil]
        optional :maximum, Float

        # @!attribute minimum
        #   The minimum allowable value for the double field.
        #
        #   @return [Float, nil]
        optional :minimum, Float

        # @!method initialize(type:, maximum: nil, minimum: nil)
        #   @param type [Symbol, HubSpotSDK::Models::Automation::DoubleFieldSchema::Type] Indicates the field type as DOUBLE.
        #
        #   @param maximum [Float] The maximum allowable value for the double field.
        #
        #   @param minimum [Float] The minimum allowable value for the double field.

        # Indicates the field type as DOUBLE.
        #
        # @see HubSpotSDK::Models::Automation::DoubleFieldSchema#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          DOUBLE = :DOUBLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
