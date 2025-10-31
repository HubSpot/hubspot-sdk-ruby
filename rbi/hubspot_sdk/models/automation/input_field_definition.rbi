# typed: strong

module HubspotSDK
  module Models
    module Automation
      class InputFieldDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::InputFieldDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :is_required

        sig { returns(HubspotSDK::Automation::FieldTypeDefinition) }
        attr_reader :type_definition

        sig do
          params(
            type_definition: HubspotSDK::Automation::FieldTypeDefinition::OrHash
          ).void
        end
        attr_writer :type_definition

        sig { returns(T.nilable(String)) }
        attr_reader :automation_field_type

        sig { params(automation_field_type: String).void }
        attr_writer :automation_field_type

        sig do
          returns(
            T.nilable(
              T::Array[
                HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::OrSymbol
              ]
            )
          )
        end
        attr_reader :supported_value_types

        sig do
          params(
            supported_value_types:
              T::Array[
                HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::OrSymbol
              ]
          ).void
        end
        attr_writer :supported_value_types

        sig do
          params(
            is_required: T::Boolean,
            type_definition:
              HubspotSDK::Automation::FieldTypeDefinition::OrHash,
            automation_field_type: String,
            supported_value_types:
              T::Array[
                HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          is_required:,
          type_definition:,
          automation_field_type: nil,
          supported_value_types: nil
        )
        end

        sig do
          override.returns(
            {
              is_required: T::Boolean,
              type_definition: HubspotSDK::Automation::FieldTypeDefinition,
              automation_field_type: String,
              supported_value_types:
                T::Array[
                  HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::OrSymbol
                ]
            }
          )
        end
        def to_hash
        end

        module SupportedValueType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::InputFieldDefinition::SupportedValueType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC_VALUE =
            T.let(
              :STATIC_VALUE,
              HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::TaggedSymbol
            )
          OBJECT_PROPERTY =
            T.let(
              :OBJECT_PROPERTY,
              HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::TaggedSymbol
            )
          FIELD_DATA =
            T.let(
              :FIELD_DATA,
              HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::TaggedSymbol
            )
          FETCHED_OBJECT_PROPERTY =
            T.let(
              :FETCHED_OBJECT_PROPERTY,
              HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::TaggedSymbol
            )
          ENROLLMENT_EVENT_PROPERTY =
            T.let(
              :ENROLLMENT_EVENT_PROPERTY,
              HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::InputFieldDefinition::SupportedValueType::TaggedSymbol
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
