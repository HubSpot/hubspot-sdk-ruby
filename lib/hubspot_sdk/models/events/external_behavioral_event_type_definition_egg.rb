# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class ExternalBehavioralEventTypeDefinitionEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_default_properties
        #
        #   @return [Boolean]
        required :include_default_properties,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeDefaultProperties

        # @!attribute label
        #   Human readable label for the event for display in HubSpot's UI.
        #
        #   @return [String]
        required :label, String

        # @!attribute property_definitions
        #   List of custom properties on event
        #
        #   @return [Array<HubspotSDK::Models::Events::ExternalBehavioralEventPropertyCreate>]
        required :property_definitions,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::ExternalBehavioralEventPropertyCreate]
                 },
                 api_name: :propertyDefinitions

        # @!attribute custom_matching_id
        #
        #   @return [HubspotSDK::Models::Events::ExternalObjectResolutionMappingRequest, nil]
        optional :custom_matching_id,
                 -> { HubspotSDK::Events::ExternalObjectResolutionMappingRequest },
                 api_name: :customMatchingId

        # @!attribute description
        #   A description of the event that will be shown as help text in HubSpot.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute name
        #   Internal event name, which must be used when referencing the event from the API.
        #   If a name is not supplied, one will be generated based on the label. The name
        #   does not include the `pe<PORTAL_ID>_` prefix used when sending event
        #   completions.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute primary_object
        #   The object type to associate this event to. Can be one of `CONTACT`, `COMPANY`,
        #   `DEAL`, `TICKET`. If no value is supplied, will default to `CONTACT`.
        #
        #   @return [String, nil]
        optional :primary_object, String, api_name: :primaryObject

        # @!method initialize(include_default_properties:, label:, property_definitions:, custom_matching_id: nil, description: nil, name: nil, primary_object: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinitionEgg} for more
        #   details.
        #
        #   @param include_default_properties [Boolean]
        #
        #   @param label [String] Human readable label for the event for display in HubSpot's UI.
        #
        #   @param property_definitions [Array<HubspotSDK::Models::Events::ExternalBehavioralEventPropertyCreate>] List of custom properties on event
        #
        #   @param custom_matching_id [HubspotSDK::Models::Events::ExternalObjectResolutionMappingRequest]
        #
        #   @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        #   @param name [String] Internal event name, which must be used when referencing the event from the API.
        #
        #   @param primary_object [String] The object type to associate this event to. Can be one of `CONTACT`, `COMPANY`,
      end
    end
  end
end
