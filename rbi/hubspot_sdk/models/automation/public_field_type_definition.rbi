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

        # The internal name used to identify the field.
        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[HubspotSDK::Automation::PublicOption]) }
        attr_accessor :options

        # The data type of the field, with accepted values including bool, date, datetime,
        # enumeration, json, number, object_coordinates, phone_number, and string.
        sig do
          returns(
            HubspotSDK::Automation::PublicFieldTypeDefinition::Type::OrSymbol
          )
        end
        attr_accessor :type

        # A detailed explanation of the field's purpose.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The type of field, with accepted values including booleancheckbox,
        # calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
        # select, text, and textarea.
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

        # Additional information or guidance about the field.
        sig { returns(T.nilable(String)) }
        attr_reader :help_text

        sig { params(help_text: String).void }
        attr_writer :help_text

        # A user-friendly name for the field.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # A URL that provides options for the field.
        sig { returns(T.nilable(String)) }
        attr_reader :options_url

        sig { params(options_url: String).void }
        attr_writer :options_url

        # The type of object that the field references, with accepted values including
        # OWNER.
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
          # The internal name used to identify the field.
          name:,
          options:,
          # The data type of the field, with accepted values including bool, date, datetime,
          # enumeration, json, number, object_coordinates, phone_number, and string.
          type:,
          # A detailed explanation of the field's purpose.
          description: nil,
          # The type of field, with accepted values including booleancheckbox,
          # calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
          # select, text, and textarea.
          field_type: nil,
          # Additional information or guidance about the field.
          help_text: nil,
          # A user-friendly name for the field.
          label: nil,
          # A URL that provides options for the field.
          options_url: nil,
          # The type of object that the field references, with accepted values including
          # OWNER.
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

        # The data type of the field, with accepted values including bool, date, datetime,
        # enumeration, json, number, object_coordinates, phone_number, and string.
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

        # The type of field, with accepted values including booleancheckbox,
        # calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
        # select, text, and textarea.
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

        # The type of object that the field references, with accepted values including
        # OWNER.
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
