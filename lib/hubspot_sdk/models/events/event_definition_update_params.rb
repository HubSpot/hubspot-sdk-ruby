# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::EventDefinitions#update
      class EventDefinitionUpdateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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

        # @!method initialize(description: nil, label: nil, request_options: {})
        #   @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        #   @param label [String] Human readable label for the event. Used in HubSpot UI
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
