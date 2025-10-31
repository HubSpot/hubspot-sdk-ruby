# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class LegalConsentCheckbox < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::LegalConsentCheckbox,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The main label for the form field.
        sig { returns(String) }
        attr_accessor :label

        # Whether this checkbox is required when submitting the form.
        sig { returns(T::Boolean) }
        attr_accessor :required

        sig { returns(Integer) }
        attr_accessor :subscription_type_id

        sig do
          params(
            label: String,
            required: T::Boolean,
            subscription_type_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The main label for the form field.
          label:,
          # Whether this checkbox is required when submitting the form.
          required:,
          subscription_type_id:
        )
        end

        sig do
          override.returns(
            {
              label: String,
              required: T::Boolean,
              subscription_type_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
