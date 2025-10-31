# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class MobilePhoneField < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MobilePhoneField,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A list of other fields to make visible based on the value filled in for this
        # field.
        sig { returns(T::Array[HubspotSDK::Marketing::DependentField]) }
        attr_accessor :dependent_fields

        # Determines how the field will be displayed and validated.
        sig do
          returns(HubspotSDK::Marketing::MobilePhoneField::FieldType::OrSymbol)
        end
        attr_accessor :field_type

        # Whether a field should be hidden or not. Hidden fields won't appear on the form,
        # but can be used to pass a value to a property without requiring the customer to
        # fill it in.
        sig { returns(T::Boolean) }
        attr_accessor :hidden

        # The main label for the form field.
        sig { returns(String) }
        attr_accessor :label

        # The identifier of the field. In combination with the object type ID, it must be
        # unique.
        sig { returns(String) }
        attr_accessor :name

        # A unique ID for this field's CRM object type. For example a CONTACT field will
        # have the object type ID 0-1.
        sig { returns(String) }
        attr_accessor :object_type_id

        # Whether a value for this field is required when submitting the form.
        sig { returns(T::Boolean) }
        attr_accessor :required

        # Describes how a phone number should be validated.
        sig { returns(HubspotSDK::Marketing::PhoneFieldValidation) }
        attr_reader :validation

        sig do
          params(
            validation: HubspotSDK::Marketing::PhoneFieldValidation::OrHash
          ).void
        end
        attr_writer :validation

        # The value filled in by default. This value will be submitted unless the customer
        # modifies it.
        sig { returns(T.nilable(String)) }
        attr_reader :default_value

        sig { params(default_value: String).void }
        attr_writer :default_value

        # Additional text helping the customer to complete the field.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The prompt text showing when the field isn't filled in.
        sig { returns(T.nilable(String)) }
        attr_reader :placeholder

        sig { params(placeholder: String).void }
        attr_writer :placeholder

        # A form field used for collecting a mobile phone number.
        sig do
          params(
            dependent_fields: T::Array[HubspotSDK::Marketing::DependentField],
            field_type:
              HubspotSDK::Marketing::MobilePhoneField::FieldType::OrSymbol,
            hidden: T::Boolean,
            label: String,
            name: String,
            object_type_id: String,
            required: T::Boolean,
            validation: HubspotSDK::Marketing::PhoneFieldValidation::OrHash,
            default_value: String,
            description: String,
            placeholder: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of other fields to make visible based on the value filled in for this
          # field.
          dependent_fields:,
          # Determines how the field will be displayed and validated.
          field_type:,
          # Whether a field should be hidden or not. Hidden fields won't appear on the form,
          # but can be used to pass a value to a property without requiring the customer to
          # fill it in.
          hidden:,
          # The main label for the form field.
          label:,
          # The identifier of the field. In combination with the object type ID, it must be
          # unique.
          name:,
          # A unique ID for this field's CRM object type. For example a CONTACT field will
          # have the object type ID 0-1.
          object_type_id:,
          # Whether a value for this field is required when submitting the form.
          required:,
          # Describes how a phone number should be validated.
          validation:,
          # The value filled in by default. This value will be submitted unless the customer
          # modifies it.
          default_value: nil,
          # Additional text helping the customer to complete the field.
          description: nil,
          # The prompt text showing when the field isn't filled in.
          placeholder: nil
        )
        end

        sig do
          override.returns(
            {
              dependent_fields: T::Array[HubspotSDK::Marketing::DependentField],
              field_type:
                HubspotSDK::Marketing::MobilePhoneField::FieldType::OrSymbol,
              hidden: T::Boolean,
              label: String,
              name: String,
              object_type_id: String,
              required: T::Boolean,
              validation: HubspotSDK::Marketing::PhoneFieldValidation,
              default_value: String,
              description: String,
              placeholder: String
            }
          )
        end
        def to_hash
        end

        # Determines how the field will be displayed and validated.
        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::MobilePhoneField::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MOBILE_PHONE =
            T.let(
              :mobile_phone,
              HubspotSDK::Marketing::MobilePhoneField::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::MobilePhoneField::FieldType::TaggedSymbol
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
