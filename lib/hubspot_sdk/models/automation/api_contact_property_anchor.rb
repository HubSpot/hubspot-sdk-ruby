# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIContactPropertyAnchor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_property
        #   A date property on the contact to use as the anchor point of this workflow.
        #
        #   @return [String]
        required :contact_property, String, api_name: :contactProperty

        # @!attribute type
        #   The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
        #   "STATIC_DATE_ANCHOR"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIContactPropertyAnchor::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIContactPropertyAnchor::Type }

        # @!method initialize(contact_property:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIContactPropertyAnchor} for more details.
        #
        #   @param contact_property [String] A date property on the contact to use as the anchor point of this workflow.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIContactPropertyAnchor::Type] The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or "STATIC_D

        # The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
        # "STATIC_DATE_ANCHOR"
        #
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
