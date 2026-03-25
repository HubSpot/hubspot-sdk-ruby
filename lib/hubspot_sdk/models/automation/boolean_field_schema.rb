# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class BooleanFieldSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::BooleanFieldSchema::Type]
        required :type, enum: -> { HubspotSDK::Automation::BooleanFieldSchema::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, HubspotSDK::Models::Automation::BooleanFieldSchema::Type]

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
