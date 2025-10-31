# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class DependentField < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::DependentField,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A condition based on customer input
        sig { returns(HubspotSDK::Marketing::DependentFieldFilter) }
        attr_reader :dependent_condition

        sig do
          params(
            dependent_condition:
              HubspotSDK::Marketing::DependentFieldFilter::OrHash
          ).void
        end
        attr_writer :dependent_condition

        # A form field used for collecting an email address.
        sig do
          returns(
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
          )
        end
        attr_accessor :dependent_field

        # A form field that will be displayed based on what the customer entered in
        # another field.
        sig do
          params(
            dependent_condition:
              HubspotSDK::Marketing::DependentFieldFilter::OrHash,
            dependent_field:
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
          ).returns(T.attached_class)
        end
        def self.new(
          # A condition based on customer input
          dependent_condition:,
          # A form field used for collecting an email address.
          dependent_field:
        )
        end

        sig do
          override.returns(
            {
              dependent_condition: HubspotSDK::Marketing::DependentFieldFilter,
              dependent_field:
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
            }
          )
        end
        def to_hash
        end

        # A form field used for collecting an email address.
        module DependentField
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
              T::Array[
                HubspotSDK::Marketing::DependentField::DependentField::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
