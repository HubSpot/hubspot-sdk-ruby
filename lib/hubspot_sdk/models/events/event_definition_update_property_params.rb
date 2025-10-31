# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::EventDefinitions#update_property
      class EventDefinitionUpdatePropertyParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute event_name
        #
        #   @return [String]
        required :event_name, String

        # @!attribute description
        #   A description of the property that will be shown as help text in HubSpot.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute label
        #   Human readable label for the property. Used in HubSpot UI
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute options
        #   A list of available options for the property if it is an enumeration. NOTE: This
        #   field is only applicable for enumerated properties.
        #
        #   @return [Array<HubspotSDK::Models::OptionInput>, nil]
        optional :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::OptionInput] }

        # @!method initialize(event_name:, description: nil, label: nil, options: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::EventDefinitionUpdatePropertyParams} for more
        #   details.
        #
        #   @param event_name [String]
        #
        #   @param description [String] A description of the property that will be shown as help text in HubSpot.
        #
        #   @param label [String] Human readable label for the property. Used in HubSpot UI
        #
        #   @param options [Array<HubspotSDK::Models::OptionInput>] A list of available options for the property if it is an enumeration. NOTE: This
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
