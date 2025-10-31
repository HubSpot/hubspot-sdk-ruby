# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::EventDefinitions#create
      class EventDefinitionCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute label
        #   Human readable label for the event. Used in HubSpot UI
        #
        #   @return [String]
        required :label, String

        # @!attribute property_definitions
        #   List of custom properties on event
        #
        #   @return [Array<HubspotSDK::Models::Events::EventDefinitionCreateParams::PropertyDefinition>]
        required :property_definitions,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::EventDefinitionCreateParams::PropertyDefinition]
                 },
                 api_name: :propertyDefinitions

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

        # @!method initialize(label:, property_definitions:, description: nil, name: nil, primary_object: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::EventDefinitionCreateParams} for more details.
        #
        #   @param label [String] Human readable label for the event. Used in HubSpot UI
        #
        #   @param property_definitions [Array<HubspotSDK::Models::Events::EventDefinitionCreateParams::PropertyDefinition>] List of custom properties on event
        #
        #   @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        #   @param name [String] Internal event name, which must be used when referencing the event from this eve
        #
        #   @param primary_object [String] The object type to associate this event to. Can be one of CONTACT, COMPANY, DEAL
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        class PropertyDefinition < HubspotSDK::Internal::Type::BaseModel
          # @!attribute label
          #   Human readable label for the property. Used in HubSpot UI
          #
          #   @return [String]
          required :label, String

          # @!attribute type
          #   The data type of the property. Can be one of the following: [string, number,
          #   enumeration, datetime]
          #
          #   @return [String]
          required :type, String

          # @!attribute description
          #   A description of the property that will be shown as help text in HubSpot.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #   Internal property name, which must be used when referencing the property from
          #   the API
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute options
          #   A list of available options for the property if it is an enumeration. NOTE: This
          #   field is only applicable for enumerated properties.
          #
          #   @return [Array<HubspotSDK::Models::OptionInput>, nil]
          optional :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::OptionInput] }

          # @!method initialize(label:, type:, description: nil, name: nil, options: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Events::EventDefinitionCreateParams::PropertyDefinition}
          #   for more details.
          #
          #   @param label [String] Human readable label for the property. Used in HubSpot UI
          #
          #   @param type [String] The data type of the property. Can be one of the following: [string, number, enu
          #
          #   @param description [String] A description of the property that will be shown as help text in HubSpot.
          #
          #   @param name [String] Internal property name, which must be used when referencing the property from th
          #
          #   @param options [Array<HubspotSDK::Models::OptionInput>] A list of available options for the property if it is an enumeration. NOTE: This
        end
      end
    end
  end
end
