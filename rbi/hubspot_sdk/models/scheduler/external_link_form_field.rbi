# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkFormField < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalLinkFormField,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The specific field type of the form field. Corresponds to property types (e.g.,
        # `select`, `radio`, `date`, etc)
        sig { returns(String) }
        attr_accessor :field_type

        # Whether the form field is a custom field.
        sig { returns(T::Boolean) }
        attr_accessor :is_custom

        # Whether the form field is mandatory.
        sig { returns(T::Boolean) }
        attr_accessor :is_required

        # The text label for the form field.
        sig { returns(String) }
        attr_accessor :label

        # The name identifier for the form field.
        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[HubspotSDK::Scheduler::ExternalOption]) }
        attr_accessor :options

        # The data type of the form field accepts (e.g. `date`, `enumeration`, etc)
        sig { returns(String) }
        attr_accessor :type

        sig do
          params(
            field_type: String,
            is_custom: T::Boolean,
            is_required: T::Boolean,
            label: String,
            name: String,
            options: T::Array[HubspotSDK::Scheduler::ExternalOption::OrHash],
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The specific field type of the form field. Corresponds to property types (e.g.,
          # `select`, `radio`, `date`, etc)
          field_type:,
          # Whether the form field is a custom field.
          is_custom:,
          # Whether the form field is mandatory.
          is_required:,
          # The text label for the form field.
          label:,
          # The name identifier for the form field.
          name:,
          options:,
          # The data type of the form field accepts (e.g. `date`, `enumeration`, etc)
          type:
        )
        end

        sig do
          override.returns(
            {
              field_type: String,
              is_custom: T::Boolean,
              is_required: T::Boolean,
              label: String,
              name: String,
              options: T::Array[HubspotSDK::Scheduler::ExternalOption],
              type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
