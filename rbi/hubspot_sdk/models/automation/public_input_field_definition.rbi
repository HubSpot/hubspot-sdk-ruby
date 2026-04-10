# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicInputFieldDefinition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicInputFieldDefinition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether the input field is mandatory.
        sig { returns(T::Boolean) }
        attr_accessor :is_required

        sig { returns(HubSpotSDK::Automation::PublicFieldTypeDefinition) }
        attr_reader :type_definition

        sig do
          params(
            type_definition:
              HubSpotSDK::Automation::PublicFieldTypeDefinition::OrHash
          ).void
        end
        attr_writer :type_definition

        sig do
          returns(
            T.nilable(
              T::Array[
                HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType::OrSymbol
              ]
            )
          )
        end
        attr_reader :supported_value_types

        sig do
          params(
            supported_value_types:
              T::Array[
                HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType::OrSymbol
              ]
          ).void
        end
        attr_writer :supported_value_types

        sig do
          params(
            is_required: T::Boolean,
            type_definition:
              HubSpotSDK::Automation::PublicFieldTypeDefinition::OrHash,
            supported_value_types:
              T::Array[
                HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether the input field is mandatory.
          is_required:,
          type_definition:,
          supported_value_types: nil
        )
        end

        sig do
          override.returns(
            {
              is_required: T::Boolean,
              type_definition:
                HubSpotSDK::Automation::PublicFieldTypeDefinition,
              supported_value_types:
                T::Array[
                  HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType::OrSymbol
                ]
            }
          )
        end
        def to_hash
        end

        module SupportedValueType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC_VALUE =
            T.let(
              :STATIC_VALUE,
              HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType::TaggedSymbol
            )
          OBJECT_PROPERTY =
            T.let(
              :OBJECT_PROPERTY,
              HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType::TaggedSymbol
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
