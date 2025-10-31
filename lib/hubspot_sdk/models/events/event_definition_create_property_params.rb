# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::EventDefinitions#create_property
      class EventDefinitionCreatePropertyParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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

        # @!method initialize(label:, type:, description: nil, name: nil, options: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::EventDefinitionCreatePropertyParams} for more
        #   details.
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
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
