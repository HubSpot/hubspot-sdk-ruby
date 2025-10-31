# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalValidatedFormField < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalValidatedFormField,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :is_custom

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :value

        sig { returns(T.nilable(String)) }
        attr_reader :field_type

        sig { params(field_type: String).void }
        attr_writer :field_type

        sig { returns(T.nilable(String)) }
        attr_reader :translated_label

        sig { params(translated_label: String).void }
        attr_writer :translated_label

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
          is_custom:,
          label:,
          name:,
          value:,
          field_type: nil,
          translated_label: nil,
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
