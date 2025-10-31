# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class TimelineEventTemplateTokenUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute label
        #   Used for list segmentation and reporting.
        #
        #   @return [String]
        required :label, String

        # @!attribute object_property_name
        #   The name of the CRM object property. This will populate the CRM object property
        #   associated with the event. With enough of these, you can fully build CRM objects
        #   via the Timeline API.
        #
        #   @return [String, nil]
        optional :object_property_name, String, api_name: :objectPropertyName

        # @!attribute options
        #   If type is `enumeration`, we should have a list of options to choose from.
        #
        #   @return [Array<HubspotSDK::Models::CRM::TimelineEventTemplateTokenOption>, nil]
        optional :options,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::TimelineEventTemplateTokenOption] }

        # @!method initialize(label:, object_property_name: nil, options: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CRM::TimelineEventTemplateTokenUpdateRequest} for more
        #   details.
        #
        #   State of the token definition for update requests.
        #
        #   @param label [String] Used for list segmentation and reporting.
        #
        #   @param object_property_name [String] The name of the CRM object property. This will populate the CRM object property
        #
        #   @param options [Array<HubspotSDK::Models::CRM::TimelineEventTemplateTokenOption>] If type is `enumeration`, we should have a list of options to choose from.
      end
    end
  end
end
