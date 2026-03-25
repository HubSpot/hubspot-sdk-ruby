# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkFormField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute field_type
        #   The specific field type of the form field. Corresponds to property types (e.g.,
        #   `select`, `radio`, `date`, etc)
        #
        #   @return [String]
        required :field_type, String, api_name: :fieldType

        # @!attribute is_custom
        #   Whether the form field is a custom field.
        #
        #   @return [Boolean]
        required :is_custom, HubspotSDK::Internal::Type::Boolean, api_name: :isCustom

        # @!attribute is_required
        #   Whether the form field is mandatory.
        #
        #   @return [Boolean]
        required :is_required, HubspotSDK::Internal::Type::Boolean, api_name: :isRequired

        # @!attribute label
        #   The text label for the form field.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The name identifier for the form field.
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalOption>]
        required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalOption] }

        # @!attribute type
        #   The data type of the form field accepts (e.g. `date`, `enumeration`, etc)
        #
        #   @return [String]
        required :type, String

        # @!method initialize(field_type:, is_custom:, is_required:, label:, name:, options:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Scheduler::ExternalLinkFormField} for more details.
        #
        #   @param field_type [String] The specific field type of the form field. Corresponds to property types (e.g.,
        #
        #   @param is_custom [Boolean] Whether the form field is a custom field.
        #
        #   @param is_required [Boolean] Whether the form field is mandatory.
        #
        #   @param label [String] The text label for the form field.
        #
        #   @param name [String] The name identifier for the form field.
        #
        #   @param options [Array<HubspotSDK::Models::Scheduler::ExternalOption>]
        #
        #   @param type [String] The data type of the form field accepts (e.g. `date`, `enumeration`, etc)
      end
    end
  end
end
