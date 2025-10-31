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

        sig { returns(String) }
        attr_accessor :field_type

        sig { returns(T::Boolean) }
        attr_accessor :is_custom

        sig { returns(T::Boolean) }
        attr_accessor :is_required

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[HubspotSDK::Scheduler::ExternalOption]) }
        attr_accessor :options

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
          field_type:,
          is_custom:,
          is_required:,
          label:,
          name:,
          options:,
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
