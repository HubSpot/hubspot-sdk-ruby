# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class ExternalBehavioralEventPropertyDefinitionPatch < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Array<HubSpotSDK::Models::OptionInput>, nil]
        optional :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::OptionInput] }

        # @!method initialize(description: nil, label: nil, options: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Events::ExternalBehavioralEventPropertyDefinitionPatch} for
        #   more details.
        #
        #   @param description [String] A description of the property that will be shown as help text in HubSpot.
        #
        #   @param label [String] Human readable label for the property. Used in HubSpot UI
        #
        #   @param options [Array<HubSpotSDK::Models::OptionInput>] A list of available options for the property if it is an enumeration. NOTE: This
      end
    end
  end
end
