# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class LongFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of the field, which is LONG by default.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::LongFieldSchema::Type]
        required :type, enum: -> { HubSpotSDK::Automation::LongFieldSchema::Type }

        # @!attribute maximum
        #   The maximum value allowed for the long field.
        #
        #   @return [Integer, nil]
        optional :maximum, Integer

        # @!attribute minimum
        #   The minimum value allowed for the long field.
        #
        #   @return [Integer, nil]
        optional :minimum, Integer

        # @!method initialize(type:, maximum: nil, minimum: nil)
        #   @param type [Symbol, HubSpotSDK::Models::Automation::LongFieldSchema::Type] The type of the field, which is LONG by default.
        #
        #   @param maximum [Integer] The maximum value allowed for the long field.
        #
        #   @param minimum [Integer] The minimum value allowed for the long field.

        # The type of the field, which is LONG by default.
        #
        # @see HubSpotSDK::Models::Automation::LongFieldSchema#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          LONG = :LONG

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
