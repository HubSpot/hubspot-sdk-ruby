# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class DoubleFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::DoubleFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::DoubleFieldSchema::Type }

        # @!attribute maximum
        #
        #   @return [Float, nil]
        optional :maximum, Float

        # @!attribute minimum
        #
        #   @return [Float, nil]
        optional :minimum, Float

        # @!method initialize(type:, maximum: nil, minimum: nil)
        #   @param type [Symbol, HubspotSDK::Models::Automation::DoubleFieldSchema::Type]
        #   @param maximum [Float]
        #   @param minimum [Float]

        # @see HubspotSDK::Models::Automation::DoubleFieldSchema#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          DOUBLE = :DOUBLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
