# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class PropertyCreate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::PropertyCreate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Cms::PropertyCreate::FieldType::OrSymbol) }
        attr_accessor :field_type

        sig { returns(String) }
        attr_accessor :group_name

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        sig { returns(HubSpotSDK::Cms::PropertyCreate::Type::OrSymbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::PropertyCreate::DataSensitivity::OrSymbol
            )
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubSpotSDK::Cms::PropertyCreate::DataSensitivity::OrSymbol
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

        sig { returns(T.nilable(T::Array[HubSpotSDK::OptionInput])) }
        attr_reader :options

        sig { params(options: T::Array[HubSpotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        sig { returns(T.nilable(String)) }
        attr_reader :referenced_object_type

        sig { params(referenced_object_type: String).void }
        attr_writer :referenced_object_type

        sig do
          params(
            field_type: HubSpotSDK::Cms::PropertyCreate::FieldType::OrSymbol,
            group_name: String,
            label: String,
            name: String,
            type: HubSpotSDK::Cms::PropertyCreate::Type::OrSymbol,
            calculation_formula: String,
            data_sensitivity:
              HubSpotSDK::Cms::PropertyCreate::DataSensitivity::OrSymbol,
            description: String,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
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
              field_type: HubSpotSDK::Cms::PropertyCreate::FieldType::OrSymbol,
              group_name: String,
              label: String,
              name: String,
              type: HubSpotSDK::Cms::PropertyCreate::Type::OrSymbol,
              calculation_formula: String,
              data_sensitivity:
                HubSpotSDK::Cms::PropertyCreate::DataSensitivity::OrSymbol,
              description: String,
              display_order: Integer,
              external_options: T::Boolean,
              form_field: T::Boolean,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              options: T::Array[HubSpotSDK::OptionInput],
              referenced_object_type: String
            }
          )
        end
        def to_hash
        end

        module FieldType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::PropertyCreate::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::PropertyCreate::FieldType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::PropertyCreate::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(:bool, HubSpotSDK::Cms::PropertyCreate::Type::TaggedSymbol)
          DATE =
            T.let(:date, HubSpotSDK::Cms::PropertyCreate::Type::TaggedSymbol)
          DATETIME =
            T.let(
              :datetime,
              HubSpotSDK::Cms::PropertyCreate::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubSpotSDK::Cms::PropertyCreate::Type::TaggedSymbol
            )
          NUMBER =
            T.let(:number, HubSpotSDK::Cms::PropertyCreate::Type::TaggedSymbol)
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubSpotSDK::Cms::PropertyCreate::Type::TaggedSymbol
            )
          STRING =
            T.let(:string, HubSpotSDK::Cms::PropertyCreate::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::PropertyCreate::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module DataSensitivity
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::PropertyCreate::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGHLY_SENSITIVE =
            T.let(
              :highly_sensitive,
              HubSpotSDK::Cms::PropertyCreate::DataSensitivity::TaggedSymbol
            )
          NON_SENSITIVE =
            T.let(
              :non_sensitive,
              HubSpotSDK::Cms::PropertyCreate::DataSensitivity::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :sensitive,
              HubSpotSDK::Cms::PropertyCreate::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::PropertyCreate::DataSensitivity::TaggedSymbol
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
