# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalValidatedFormField < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalValidatedFormField,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Whether the form field is a custom field.
        sig { returns(T::Boolean) }
        attr_accessor :is_custom

        # The text label associated with the form field.
        sig { returns(String) }
        attr_accessor :label

        # The name identifier for the form field, includes underscores in place of spaces
        # (e.g., the label `my form` is converted to `my_form`).
        sig { returns(String) }
        attr_accessor :name

        # The value associated with the form field.
        sig { returns(String) }
        attr_accessor :value

        # The specific input type of the form field. Corresponds to property types (e.g.,
        # `select`, `radio`, `date`, etc).
        sig { returns(T.nilable(String)) }
        attr_reader :field_type

        sig { params(field_type: String).void }
        attr_writer :field_type

        # The translated text label for the form field.
        sig { returns(T.nilable(String)) }
        attr_reader :translated_label

        sig { params(translated_label: String).void }
        attr_writer :translated_label

        # The text label associated to a form field selection or option.
        sig { returns(T.nilable(String)) }
        attr_reader :value_label

        sig { params(value_label: String).void }
        attr_writer :value_label

        sig do
          params(
            is_custom: T::Boolean,
            label: String,
            name: String,
            value: String,
            field_type: String,
            translated_label: String,
            value_label: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the form field is a custom field.
          is_custom:,
          # The text label associated with the form field.
          label:,
          # The name identifier for the form field, includes underscores in place of spaces
          # (e.g., the label `my form` is converted to `my_form`).
          name:,
          # The value associated with the form field.
          value:,
          # The specific input type of the form field. Corresponds to property types (e.g.,
          # `select`, `radio`, `date`, etc).
          field_type: nil,
          # The translated text label for the form field.
          translated_label: nil,
          # The text label associated to a form field selection or option.
          value_label: nil
        )
        end

        sig do
          override.returns(
            {
              is_custom: T::Boolean,
              label: String,
              name: String,
              value: String,
              field_type: String,
              translated_label: String,
              value_label: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
