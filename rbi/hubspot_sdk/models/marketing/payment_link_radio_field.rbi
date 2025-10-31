# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PaymentLinkRadioField < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PaymentLinkRadioField,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :default_values

        sig { returns(T::Array[HubspotSDK::Marketing::DependentField]) }
        attr_accessor :dependent_fields

        sig do
          returns(
            HubspotSDK::Marketing::PaymentLinkRadioField::FieldType::OrSymbol
          )
        end
        attr_accessor :field_type

        sig { returns(T::Boolean) }
        attr_accessor :hidden

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(T::Array[HubspotSDK::Marketing::EnumeratedFieldOption]) }
        attr_accessor :options

        sig { returns(T::Boolean) }
        attr_accessor :required

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            default_values: T::Array[String],
            dependent_fields: T::Array[HubspotSDK::Marketing::DependentField],
            field_type:
              HubspotSDK::Marketing::PaymentLinkRadioField::FieldType::OrSymbol,
            hidden: T::Boolean,
            label: String,
            name: String,
            object_type_id: String,
            options:
              T::Array[HubspotSDK::Marketing::EnumeratedFieldOption::OrHash],
            required: T::Boolean,
            description: String
          ).returns(T.attached_class)
        end
        def self.new(
          default_values:,
          dependent_fields:,
          field_type:,
          hidden:,
          label:,
          name:,
          object_type_id:,
          options:,
          required:,
          description: nil
        )
        end

        sig do
          override.returns(
            {
              default_values: T::Array[String],
              dependent_fields: T::Array[HubspotSDK::Marketing::DependentField],
              field_type:
                HubspotSDK::Marketing::PaymentLinkRadioField::FieldType::OrSymbol,
              hidden: T::Boolean,
              label: String,
              name: String,
              object_type_id: String,
              options: T::Array[HubspotSDK::Marketing::EnumeratedFieldOption],
              required: T::Boolean,
              description: String
            }
          )
        end
        def to_hash
        end

        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PaymentLinkRadioField::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYMENT_LINK_RADIO =
            T.let(
              :payment_link_radio,
              HubspotSDK::Marketing::PaymentLinkRadioField::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PaymentLinkRadioField::FieldType::TaggedSymbol
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
