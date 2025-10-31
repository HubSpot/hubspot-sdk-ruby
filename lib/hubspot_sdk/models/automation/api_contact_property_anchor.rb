# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIContactPropertyAnchor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_property
        #
        #   @return [String]
        required :contact_property, String, api_name: :contactProperty

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIContactPropertyAnchor::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIContactPropertyAnchor::Type }

        # @!method initialize(contact_property:, type:)
        #   @param contact_property [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIContactPropertyAnchor::Type]

        # @see HubspotSDK::Models::Automation::APIContactPropertyAnchor#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          CONTACT_PROPERTY_ANCHOR = :CONTACT_PROPERTY_ANCHOR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
