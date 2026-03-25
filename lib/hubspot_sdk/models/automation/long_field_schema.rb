# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class LongFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::LongFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::LongFieldSchema::Type }

        # @!attribute maximum
        #
        #   @return [Integer, nil]
        optional :maximum, Integer

        # @!attribute minimum
        #
        #   @return [Integer, nil]
        optional :minimum, Integer

        # @!method initialize(type:, maximum: nil, minimum: nil)
        #   @param type [Symbol, HubspotSDK::Models::Automation::LongFieldSchema::Type]
        #   @param maximum [Integer]
        #   @param minimum [Integer]

        # @see HubspotSDK::Models::Automation::LongFieldSchema#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          LONG = :LONG

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
