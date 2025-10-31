# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class ExternalBehavioralEventTypeDefinitionPatch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute description
        #   A description of the event that will be shown as help text in HubSpot.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute label
        #   Human readable label for the event. Used in HubSpot UI
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(description: nil, label: nil)
        #   @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        #   @param label [String] Human readable label for the event. Used in HubSpot UI
      end
    end
  end
end
