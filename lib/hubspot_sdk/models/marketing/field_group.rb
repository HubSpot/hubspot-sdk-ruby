# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class FieldGroup < HubspotSDK::Internal::Type::BaseModel
        # @!attribute fields
        #   The form fields included in the group
        #
        #   @return [Array<HubspotSDK::Models::Marketing::EmailField, HubspotSDK::Models::Marketing::PhoneField, HubspotSDK::Models::Marketing::MobilePhoneField, HubspotSDK::Models::Marketing::SingleLineTextField, HubspotSDK::Models::Marketing::MultiLineTextField, HubspotSDK::Models::Marketing::NumberField, HubspotSDK::Models::Marketing::SingleCheckboxField, HubspotSDK::Models::Marketing::MultipleCheckboxesField, HubspotSDK::Models::Marketing::DropdownField, HubspotSDK::Models::Marketing::RadioField, HubspotSDK::Models::Marketing::DatepickerField, HubspotSDK::Models::Marketing::FileField, HubspotSDK::Models::Marketing::PaymentLinkRadioField>]
        required :fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Marketing::FieldGroup::Field] }

        # @!attribute group_type
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::FieldGroup::GroupType]
        required :group_type, enum: -> { HubspotSDK::Marketing::FieldGroup::GroupType }, api_name: :groupType

        # @!attribute rich_text_type
        #   The type of rich text included. The default value is text.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::FieldGroup::RichTextType]
        required :rich_text_type,
                 enum: -> { HubspotSDK::Marketing::FieldGroup::RichTextType },
                 api_name: :richTextType

        # @!attribute rich_text
        #   A block of rich text or an image. Those can be used to add extra information for
        #   the customers filling in the form. If the field group includes fields, the rich
        #   text will be displayed before the fields.
        #
        #   @return [String, nil]
        optional :rich_text, String, api_name: :richText

        # @!method initialize(fields:, group_type:, rich_text_type:, rich_text: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::FieldGroup} for more details.
        #
        #   A collection of up to three form fields usually displayed in a row.
        #
        #   @param fields [Array<HubspotSDK::Models::Marketing::EmailField, HubspotSDK::Models::Marketing::PhoneField, HubspotSDK::Models::Marketing::MobilePhoneField, HubspotSDK::Models::Marketing::SingleLineTextField, HubspotSDK::Models::Marketing::MultiLineTextField, HubspotSDK::Models::Marketing::NumberField, HubspotSDK::Models::Marketing::SingleCheckboxField, HubspotSDK::Models::Marketing::MultipleCheckboxesField, HubspotSDK::Models::Marketing::DropdownField, HubspotSDK::Models::Marketing::RadioField, HubspotSDK::Models::Marketing::DatepickerField, HubspotSDK::Models::Marketing::FileField, HubspotSDK::Models::Marketing::PaymentLinkRadioField>] The form fields included in the group
        #
        #   @param group_type [Symbol, HubspotSDK::Models::Marketing::FieldGroup::GroupType]
        #
        #   @param rich_text_type [Symbol, HubspotSDK::Models::Marketing::FieldGroup::RichTextType] The type of rich text included. The default value is text.
        #
        #   @param rich_text [String] A block of rich text or an image. Those can be used to add extra information for

        # A form field used for collecting an email address.
        module Field
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

        # @see HubspotSDK::Models::Marketing::FieldGroup#group_type
        module GroupType
          extend HubspotSDK::Internal::Type::Enum

          DEFAULT_GROUP = :default_group
          PROGRESSIVE = :progressive
          QUEUED = :queued

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of rich text included. The default value is text.
        #
        # @see HubspotSDK::Models::Marketing::FieldGroup#rich_text_type
        module RichTextType
          extend HubspotSDK::Internal::Type::Enum

          TEXT = :text
          IMAGE = :image

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
