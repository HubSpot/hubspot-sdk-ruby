# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class OptionInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute hidden
        #   If true, the option will not be shown in forms, bots, or meeting scheduling
        #   pages. Supported for contact, company, ticket, and custom object enumeration
        #   properties.
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute label
        #   A human-readable option label that will be shown in HubSpot.
        #
        #   @return [String]
        required :label, String

        # @!attribute value
        #   The internal value of the option, which must be used when setting the property
        #   value through the API.
        #
        #   @return [String]
        required :value, String

        # @!attribute description
        #   A description of the option.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute display_order
        #   Options are shown in order starting with the lowest positive integer value.
        #   Values of -1 will cause the option to be displayed after any positive values.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!method initialize(hidden:, label:, value:, description: nil, display_order: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CRM::OptionInput} for more details.
        #
        #   @param hidden [Boolean] If true, the option will not be shown in forms, bots, or meeting scheduling page
        #
        #   @param label [String] A human-readable option label that will be shown in HubSpot.
        #
        #   @param value [String] The internal value of the option, which must be used when setting the property v
        #
        #   @param description [String] A description of the option.
        #
        #   @param display_order [Integer] Options are shown in order starting with the lowest positive integer value. Valu
      end
    end
  end
end
