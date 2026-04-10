# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalValidatedFormField < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute is_custom
        #   Whether the form field is a custom field.
        #
        #   @return [Boolean]
        required :is_custom, HubSpotSDK::Internal::Type::Boolean, api_name: :isCustom

        # @!attribute label
        #   The text label associated with the form field.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The name identifier for the form field, includes underscores in place of spaces
        #   (e.g., the label `my form` is converted to `my_form`).
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #   The value associated with the form field.
        #
        #   @return [String]
        required :value, String

        # @!attribute field_type
        #   The specific input type of the form field. Corresponds to property types (e.g.,
        #   `select`, `radio`, `date`, etc).
        #
        #   @return [String, nil]
        optional :field_type, String, api_name: :fieldType

        # @!attribute translated_label
        #   The translated text label for the form field.
        #
        #   @return [String, nil]
        optional :translated_label, String, api_name: :translatedLabel

        # @!attribute value_label
        #   The text label associated to a form field selection or option.
        #
        #   @return [String, nil]
        optional :value_label, String, api_name: :valueLabel

        # @!method initialize(is_custom:, label:, name:, value:, field_type: nil, translated_label: nil, value_label: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Scheduler::ExternalValidatedFormField} for more details.
        #
        #   @param is_custom [Boolean] Whether the form field is a custom field.
        #
        #   @param label [String] The text label associated with the form field.
        #
        #   @param name [String] The name identifier for the form field, includes underscores in place of spaces
        #
        #   @param value [String] The value associated with the form field.
        #
        #   @param field_type [String] The specific input type of the form field. Corresponds to property types (e.g.,
        #
        #   @param translated_label [String] The translated text label for the form field.
        #
        #   @param value_label [String] The text label associated to a form field selection or option.
      end
    end
  end
end
