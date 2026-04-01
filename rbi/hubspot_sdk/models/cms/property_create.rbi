# typed: strong

module HubspotSDK
  module Models
    module Cms
      class PropertyCreate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::PropertyCreate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Cms::PropertyCreate::FieldType::OrSymbol) }
        attr_accessor :field_type

        sig { returns(String) }
        attr_accessor :group_name

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        sig { returns(HubspotSDK::Cms::PropertyCreate::Type::OrSymbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig do
          returns(
            T.nilable(
              HubspotSDK::Cms::PropertyCreate::DataSensitivity::OrSymbol
            )
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubspotSDK::Cms::PropertyCreate::DataSensitivity::OrSymbol
          ).void
        end
        attr_writer :data_sensitivity

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :external_options

        sig { params(external_options: T::Boolean).void }
        attr_writer :external_options

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :form_field

        sig { params(form_field: T::Boolean).void }
        attr_writer :form_field

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_unique_value

        sig { params(has_unique_value: T::Boolean).void }
        attr_writer :has_unique_value

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hidden

        sig { params(hidden: T::Boolean).void }
        attr_writer :hidden

        sig { returns(T.nilable(T::Array[HubspotSDK::OptionInput])) }
        attr_reader :options

        sig { params(options: T::Array[HubspotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        sig { returns(T.nilable(String)) }
        attr_reader :referenced_object_type

        sig { params(referenced_object_type: String).void }
        attr_writer :referenced_object_type

        sig do
          params(
            field_type: HubspotSDK::Cms::PropertyCreate::FieldType::OrSymbol,
            group_name: String,
            label: String,
            name: String,
            type: HubspotSDK::Cms::PropertyCreate::Type::OrSymbol,
            calculation_formula: String,
            data_sensitivity:
              HubspotSDK::Cms::PropertyCreate::DataSensitivity::OrSymbol,
            description: String,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            options: T::Array[HubspotSDK::OptionInput::OrHash],
            referenced_object_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          field_type:,
          group_name:,
          label:,
          name:,
          type:,
          calculation_formula: nil,
          data_sensitivity: nil,
          description: nil,
          display_order: nil,
          external_options: nil,
          form_field: nil,
          has_unique_value: nil,
          hidden: nil,
          options: nil,
          referenced_object_type: nil
        )
        end

        sig do
          override.returns(
            {
              field_type: HubspotSDK::Cms::PropertyCreate::FieldType::OrSymbol,
              group_name: String,
              label: String,
              name: String,
              type: HubspotSDK::Cms::PropertyCreate::Type::OrSymbol,
              calculation_formula: String,
              data_sensitivity:
                HubspotSDK::Cms::PropertyCreate::DataSensitivity::OrSymbol,
              description: String,
              display_order: Integer,
              external_options: T::Boolean,
              form_field: T::Boolean,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              options: T::Array[HubspotSDK::OptionInput],
              referenced_object_type: String
            }
          )
        end
        def to_hash
        end

        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::PropertyCreate::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::PropertyCreate::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(:bool, HubspotSDK::Cms::PropertyCreate::Type::TaggedSymbol)
          DATE =
            T.let(:date, HubspotSDK::Cms::PropertyCreate::Type::TaggedSymbol)
          DATETIME =
            T.let(
              :datetime,
              HubspotSDK::Cms::PropertyCreate::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubspotSDK::Cms::PropertyCreate::Type::TaggedSymbol
            )
          NUMBER =
            T.let(:number, HubspotSDK::Cms::PropertyCreate::Type::TaggedSymbol)
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubspotSDK::Cms::PropertyCreate::Type::TaggedSymbol
            )
          STRING =
            T.let(:string, HubspotSDK::Cms::PropertyCreate::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::PropertyCreate::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::PropertyCreate::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGHLY_SENSITIVE =
            T.let(
              :highly_sensitive,
              HubspotSDK::Cms::PropertyCreate::DataSensitivity::TaggedSymbol
            )
          NON_SENSITIVE =
            T.let(
              :non_sensitive,
              HubspotSDK::Cms::PropertyCreate::DataSensitivity::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :sensitive,
              HubspotSDK::Cms::PropertyCreate::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::PropertyCreate::DataSensitivity::TaggedSymbol
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
