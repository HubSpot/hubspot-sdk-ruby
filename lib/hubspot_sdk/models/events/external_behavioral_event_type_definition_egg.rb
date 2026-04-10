# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class ExternalBehavioralEventTypeDefinitionEgg < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_default_properties
        #
        #   @return [Boolean]
        required :include_default_properties,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeDefaultProperties

        # @!attribute label
        #   Human readable label for the event. Used in HubSpot UI
        #
        #   @return [String]
        required :label, String

        # @!attribute property_definitions
        #   List of custom properties on event
        #
        #   @return [Array<HubSpotSDK::Models::Events::ExternalBehavioralEventPropertyCreate>]
        required :property_definitions,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::ExternalBehavioralEventPropertyCreate]
                 },
                 api_name: :propertyDefinitions

        # @!attribute custom_matching_id
        #
        #   @return [HubSpotSDK::Models::Events::ExternalObjectResolutionMappingRequest, nil]
        optional :custom_matching_id,
                 -> { HubSpotSDK::Events::ExternalObjectResolutionMappingRequest },
                 api_name: :customMatchingId

        # @!attribute description
        #   A description of the event that will be shown as help text in HubSpot.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute name
        #   Internal event name, which must be used when referencing the event from this
        #   event definitions API. If a name is not supplied, one will be generated based on
        #   the label. The `name` value will also be used to automatically generate a
        #   `fullyQualifiedName` for the event definition, which you'll use when sending
        #   event completions to this event.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute primary_object
        #   The object type to associate this event to. Can be one of CONTACT, COMPANY,
        #   DEAL, TICKET. If no primaryObject is supplied, we will default to associating
        #   the event to CONTACT objects.
        #
        #   @return [String, nil]
        optional :primary_object, String, api_name: :primaryObject

        # @!method initialize(include_default_properties:, label:, property_definitions:, custom_matching_id: nil, description: nil, name: nil, primary_object: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Events::ExternalBehavioralEventTypeDefinitionEgg} for more
        #   details.
        #
        #   @param include_default_properties [Boolean]
        #
        #   @param label [String] Human readable label for the event. Used in HubSpot UI
        #
        #   @param property_definitions [Array<HubSpotSDK::Models::Events::ExternalBehavioralEventPropertyCreate>] List of custom properties on event
        #
        #   @param custom_matching_id [HubSpotSDK::Models::Events::ExternalObjectResolutionMappingRequest]
        #
        #   @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        #   @param name [String] Internal event name, which must be used when referencing the event from this eve
        #
        #   @param primary_object [String] The object type to associate this event to. Can be one of CONTACT, COMPANY, DEAL
      end
    end
  end
end
