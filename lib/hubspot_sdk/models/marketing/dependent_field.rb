# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class DependentField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute dependent_condition
        #   A condition based on customer input
        #
        #   @return [HubspotSDK::Models::Marketing::DependentFieldFilter]
        required :dependent_condition,
                 -> { HubspotSDK::Marketing::DependentFieldFilter },
                 api_name: :dependentCondition

        # @!attribute dependent_field
        #   A form field used for collecting an email address.
        #
        #   @return [HubspotSDK::Models::Marketing::EmailField, HubspotSDK::Models::Marketing::PhoneField, HubspotSDK::Models::Marketing::MobilePhoneField, HubspotSDK::Models::Marketing::SingleLineTextField, HubspotSDK::Models::Marketing::MultiLineTextField, HubspotSDK::Models::Marketing::NumberField, HubspotSDK::Models::Marketing::SingleCheckboxField, HubspotSDK::Models::Marketing::MultipleCheckboxesField, HubspotSDK::Models::Marketing::DropdownField, HubspotSDK::Models::Marketing::RadioField, HubspotSDK::Models::Marketing::DatepickerField, HubspotSDK::Models::Marketing::FileField, HubspotSDK::Models::Marketing::PaymentLinkRadioField]
        required :dependent_field,
                 union: -> { HubspotSDK::Marketing::DependentField::DependentField },
                 api_name: :dependentField

        # @!method initialize(dependent_condition:, dependent_field:)
        #   A form field that will be displayed based on what the customer entered in
        #   another field.
        #
        #   @param dependent_condition [HubspotSDK::Models::Marketing::DependentFieldFilter] A condition based on customer input
        #
        #   @param dependent_field [HubspotSDK::Models::Marketing::EmailField, HubspotSDK::Models::Marketing::PhoneField, HubspotSDK::Models::Marketing::MobilePhoneField, HubspotSDK::Models::Marketing::SingleLineTextField, HubspotSDK::Models::Marketing::MultiLineTextField, HubspotSDK::Models::Marketing::NumberField, HubspotSDK::Models::Marketing::SingleCheckboxField, HubspotSDK::Models::Marketing::MultipleCheckboxesField, HubspotSDK::Models::Marketing::DropdownField, HubspotSDK::Models::Marketing::RadioField, HubspotSDK::Models::Marketing::DatepickerField, HubspotSDK::Models::Marketing::FileField, HubspotSDK::Models::Marketing::PaymentLinkRadioField] A form field used for collecting an email address.

        # A form field used for collecting an email address.
        #
        # @see HubspotSDK::Models::Marketing::DependentField#dependent_field
        module DependentField
          extend HubspotSDK::Internal::Type::Union

          # A form field used for collecting an email address.
          variant -> { HubspotSDK::Marketing::EmailField }

          # A form field used for collecting a phone number.
          variant -> { HubspotSDK::Marketing::PhoneField }

          # A form field used for collecting a mobile phone number.
          variant -> { HubspotSDK::Marketing::MobilePhoneField }

          # A form field consisting of a single-line text box.
          variant -> { HubspotSDK::Marketing::SingleLineTextField }

          # A form field consisting of a multiple-line text box.
          variant -> { HubspotSDK::Marketing::MultiLineTextField }

          # A form field used for collecting a numeric value.
          variant -> { HubspotSDK::Marketing::NumberField }

          # A form field consisting of a single checkbox.
          variant -> { HubspotSDK::Marketing::SingleCheckboxField }

          # A form field consisting of a set of checkboxes allowing multiple choices to be selected at one time.
          variant -> { HubspotSDK::Marketing::MultipleCheckboxesField }

          # A field consisting of a drop down with multiple choices.
          variant -> { HubspotSDK::Marketing::DropdownField }

          # A form field consisting of a set of radio options, out of which one can be selected at a time.
          variant -> { HubspotSDK::Marketing::RadioField }

          # A form field used to select a date
          variant -> { HubspotSDK::Marketing::DatepickerField }

          # A form field used for uploading one or more files.
          variant -> { HubspotSDK::Marketing::FileField }

          variant -> { HubspotSDK::Marketing::PaymentLinkRadioField }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Marketing::EmailField, HubspotSDK::Models::Marketing::PhoneField, HubspotSDK::Models::Marketing::MobilePhoneField, HubspotSDK::Models::Marketing::SingleLineTextField, HubspotSDK::Models::Marketing::MultiLineTextField, HubspotSDK::Models::Marketing::NumberField, HubspotSDK::Models::Marketing::SingleCheckboxField, HubspotSDK::Models::Marketing::MultipleCheckboxesField, HubspotSDK::Models::Marketing::DropdownField, HubspotSDK::Models::Marketing::RadioField, HubspotSDK::Models::Marketing::DatepickerField, HubspotSDK::Models::Marketing::FileField, HubspotSDK::Models::Marketing::PaymentLinkRadioField)]
        end
      end
    end
  end
end
