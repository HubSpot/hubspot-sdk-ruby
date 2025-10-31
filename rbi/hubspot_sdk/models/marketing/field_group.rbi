# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class FieldGroup < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::FieldGroup,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The form fields included in the group
        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Marketing::EmailField,
                HubspotSDK::Marketing::PhoneField,
                HubspotSDK::Marketing::MobilePhoneField,
                HubspotSDK::Marketing::SingleLineTextField,
                HubspotSDK::Marketing::MultiLineTextField,
                HubspotSDK::Marketing::NumberField,
                HubspotSDK::Marketing::SingleCheckboxField,
                HubspotSDK::Marketing::MultipleCheckboxesField,
                HubspotSDK::Marketing::DropdownField,
                HubspotSDK::Marketing::RadioField,
                HubspotSDK::Marketing::DatepickerField,
                HubspotSDK::Marketing::FileField,
                HubspotSDK::Marketing::PaymentLinkRadioField
              )
            ]
          )
        end
        attr_accessor :fields

        sig { returns(HubspotSDK::Marketing::FieldGroup::GroupType::OrSymbol) }
        attr_accessor :group_type

        # The type of rich text included. The default value is text.
        sig do
          returns(HubspotSDK::Marketing::FieldGroup::RichTextType::OrSymbol)
        end
        attr_accessor :rich_text_type

        # A block of rich text or an image. Those can be used to add extra information for
        # the customers filling in the form. If the field group includes fields, the rich
        # text will be displayed before the fields.
        sig { returns(T.nilable(String)) }
        attr_reader :rich_text

        sig { params(rich_text: String).void }
        attr_writer :rich_text

        # A collection of up to three form fields usually displayed in a row.
        sig do
          params(
            fields:
              T::Array[
                T.any(
                  HubspotSDK::Marketing::EmailField::OrHash,
                  HubspotSDK::Marketing::PhoneField::OrHash,
                  HubspotSDK::Marketing::MobilePhoneField::OrHash,
                  HubspotSDK::Marketing::SingleLineTextField::OrHash,
                  HubspotSDK::Marketing::MultiLineTextField::OrHash,
                  HubspotSDK::Marketing::NumberField::OrHash,
                  HubspotSDK::Marketing::SingleCheckboxField::OrHash,
                  HubspotSDK::Marketing::MultipleCheckboxesField::OrHash,
                  HubspotSDK::Marketing::DropdownField::OrHash,
                  HubspotSDK::Marketing::RadioField::OrHash,
                  HubspotSDK::Marketing::DatepickerField::OrHash,
                  HubspotSDK::Marketing::FileField::OrHash,
                  HubspotSDK::Marketing::PaymentLinkRadioField::OrHash
                )
              ],
            group_type: HubspotSDK::Marketing::FieldGroup::GroupType::OrSymbol,
            rich_text_type:
              HubspotSDK::Marketing::FieldGroup::RichTextType::OrSymbol,
            rich_text: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The form fields included in the group
          fields:,
          group_type:,
          # The type of rich text included. The default value is text.
          rich_text_type:,
          # A block of rich text or an image. Those can be used to add extra information for
          # the customers filling in the form. If the field group includes fields, the rich
          # text will be displayed before the fields.
          rich_text: nil
        )
        end

        sig do
          override.returns(
            {
              fields:
                T::Array[
                  T.any(
                    HubspotSDK::Marketing::EmailField,
                    HubspotSDK::Marketing::PhoneField,
                    HubspotSDK::Marketing::MobilePhoneField,
                    HubspotSDK::Marketing::SingleLineTextField,
                    HubspotSDK::Marketing::MultiLineTextField,
                    HubspotSDK::Marketing::NumberField,
                    HubspotSDK::Marketing::SingleCheckboxField,
                    HubspotSDK::Marketing::MultipleCheckboxesField,
                    HubspotSDK::Marketing::DropdownField,
                    HubspotSDK::Marketing::RadioField,
                    HubspotSDK::Marketing::DatepickerField,
                    HubspotSDK::Marketing::FileField,
                    HubspotSDK::Marketing::PaymentLinkRadioField
                  )
                ],
              group_type:
                HubspotSDK::Marketing::FieldGroup::GroupType::OrSymbol,
              rich_text_type:
                HubspotSDK::Marketing::FieldGroup::RichTextType::OrSymbol,
              rich_text: String
            }
          )
        end
        def to_hash
        end

        # A form field used for collecting an email address.
        module Field
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::EmailField,
                HubspotSDK::Marketing::PhoneField,
                HubspotSDK::Marketing::MobilePhoneField,
                HubspotSDK::Marketing::SingleLineTextField,
                HubspotSDK::Marketing::MultiLineTextField,
                HubspotSDK::Marketing::NumberField,
                HubspotSDK::Marketing::SingleCheckboxField,
                HubspotSDK::Marketing::MultipleCheckboxesField,
                HubspotSDK::Marketing::DropdownField,
                HubspotSDK::Marketing::RadioField,
                HubspotSDK::Marketing::DatepickerField,
                HubspotSDK::Marketing::FileField,
                HubspotSDK::Marketing::PaymentLinkRadioField
              )
            end

          sig do
            override.returns(
              T::Array[HubspotSDK::Marketing::FieldGroup::Field::Variants]
            )
          end
          def self.variants
          end
        end

        module GroupType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::FieldGroup::GroupType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEFAULT_GROUP =
            T.let(
              :default_group,
              HubspotSDK::Marketing::FieldGroup::GroupType::TaggedSymbol
            )
          PROGRESSIVE =
            T.let(
              :progressive,
              HubspotSDK::Marketing::FieldGroup::GroupType::TaggedSymbol
            )
          QUEUED =
            T.let(
              :queued,
              HubspotSDK::Marketing::FieldGroup::GroupType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::FieldGroup::GroupType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of rich text included. The default value is text.
        module RichTextType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::FieldGroup::RichTextType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              HubspotSDK::Marketing::FieldGroup::RichTextType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :image,
              HubspotSDK::Marketing::FieldGroup::RichTextType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::FieldGroup::RichTextType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
