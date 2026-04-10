# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class ExternalBehavioralEventPropertyCreate < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Array<HubSpotSDK::Models::OptionInput>, nil]
        optional :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::OptionInput] }

        # @!method initialize(label:, type:, description: nil, name: nil, options: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Events::ExternalBehavioralEventPropertyCreate} for more
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
        #   @param options [Array<HubSpotSDK::Models::OptionInput>] A list of available options for the property if it is an enumeration. NOTE: This
      end
    end
  end
end
