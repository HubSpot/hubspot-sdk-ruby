# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicFieldTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicFieldTypeDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[HubspotSDK::Automation::PublicOption]) }
        attr_accessor :options

        sig do
          returns(
            HubspotSDK::Automation::PublicFieldTypeDefinition::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          returns(
            T.nilable(
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::OrSymbol
            )
          )
        end
        attr_reader :field_type

        sig do
          params(
            field_type:
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::OrSymbol
          ).void
        end
        attr_writer :field_type

        sig { returns(T.nilable(String)) }
        attr_reader :help_text

        sig { params(help_text: String).void }
        attr_writer :help_text

        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig { returns(T.nilable(String)) }
        attr_reader :options_url

        sig { params(options_url: String).void }
        attr_writer :options_url

        sig do
          returns(
            T.nilable(
              HubspotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType::OrSymbol
            )
          )
        end
        attr_reader :referenced_object_type

        sig do
          params(
            referenced_object_type:
              HubspotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType::OrSymbol
          ).void
        end
        attr_writer :referenced_object_type

        sig do
          params(
            name: String,
            options: T::Array[HubspotSDK::Automation::PublicOption::OrHash],
            type:
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::OrSymbol,
            description: String,
            field_type:
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::OrSymbol,
            help_text: String,
            label: String,
            options_url: String,
            referenced_object_type:
              HubspotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          name:,
          options:,
          type:,
          description: nil,
          field_type: nil,
          help_text: nil,
          label: nil,
          options_url: nil,
          referenced_object_type: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              options: T::Array[HubspotSDK::Automation::PublicOption],
              type:
                HubspotSDK::Automation::PublicFieldTypeDefinition::Type::OrSymbol,
              description: String,
              field_type:
                HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::OrSymbol,
              help_text: String,
              label: String,
              options_url: String,
              referenced_object_type:
                HubspotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicFieldTypeDefinition::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :bool,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )
          DATETIME =
            T.let(
              :datetime,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )
          JSON =
            T.let(
              :json,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )
          OBJECT_COORDINATES =
            T.let(
              :object_coordinates,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicFieldTypeDefinition::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ReferencedObjectType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OWNER =
            T.let(
              :OWNER,
              HubspotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType::TaggedSymbol
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
