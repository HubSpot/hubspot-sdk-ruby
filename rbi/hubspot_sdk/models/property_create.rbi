# typed: strong

module HubSpotSDK
  module Models
    class PropertyCreate < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::PropertyCreate, HubSpotSDK::Internal::AnyHash)
        end

      sig { returns(HubSpotSDK::PropertyCreate::FieldType::OrSymbol) }
      attr_accessor :field_type

      sig { returns(String) }
      attr_accessor :group_name

      sig { returns(String) }
      attr_accessor :label

      sig { returns(String) }
      attr_accessor :name

      sig { returns(HubSpotSDK::PropertyCreate::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :calculation_formula

      sig { params(calculation_formula: String).void }
      attr_writer :calculation_formula

      sig { returns(T.nilable(String)) }
      attr_reader :currency_property_name

      sig { params(currency_property_name: String).void }
      attr_writer :currency_property_name

      sig do
        returns(
          T.nilable(HubSpotSDK::PropertyCreate::DataSensitivity::OrSymbol)
        )
      end
      attr_reader :data_sensitivity

      sig do
        params(
          data_sensitivity:
            HubSpotSDK::PropertyCreate::DataSensitivity::OrSymbol
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

      sig do
        returns(
          T.nilable(HubSpotSDK::PropertyCreate::NumberDisplayHint::OrSymbol)
        )
      end
      attr_reader :number_display_hint

      sig do
        params(
          number_display_hint:
            HubSpotSDK::PropertyCreate::NumberDisplayHint::OrSymbol
        ).void
      end
      attr_writer :number_display_hint

      sig { returns(T.nilable(T::Array[HubSpotSDK::OptionInput])) }
      attr_reader :options

      sig { params(options: T::Array[HubSpotSDK::OptionInput::OrHash]).void }
      attr_writer :options

      sig { returns(T.nilable(String)) }
      attr_reader :referenced_object_type

      sig { params(referenced_object_type: String).void }
      attr_writer :referenced_object_type

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_currency_symbol

      sig { params(show_currency_symbol: T::Boolean).void }
      attr_writer :show_currency_symbol

      sig do
        params(
          field_type: HubSpotSDK::PropertyCreate::FieldType::OrSymbol,
          group_name: String,
          label: String,
          name: String,
          type: HubSpotSDK::PropertyCreate::Type::OrSymbol,
          calculation_formula: String,
          currency_property_name: String,
          data_sensitivity:
            HubSpotSDK::PropertyCreate::DataSensitivity::OrSymbol,
          description: String,
          display_order: Integer,
          external_options: T::Boolean,
          form_field: T::Boolean,
          has_unique_value: T::Boolean,
          hidden: T::Boolean,
          number_display_hint:
            HubSpotSDK::PropertyCreate::NumberDisplayHint::OrSymbol,
          options: T::Array[HubSpotSDK::OptionInput::OrHash],
          referenced_object_type: String,
          show_currency_symbol: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        field_type:,
        group_name:,
        label:,
        name:,
        type:,
        calculation_formula: nil,
        currency_property_name: nil,
        data_sensitivity: nil,
        description: nil,
        display_order: nil,
        external_options: nil,
        form_field: nil,
        has_unique_value: nil,
        hidden: nil,
        number_display_hint: nil,
        options: nil,
        referenced_object_type: nil,
        show_currency_symbol: nil
      )
      end

      sig do
        override.returns(
          {
            field_type: HubSpotSDK::PropertyCreate::FieldType::OrSymbol,
            group_name: String,
            label: String,
            name: String,
            type: HubSpotSDK::PropertyCreate::Type::OrSymbol,
            calculation_formula: String,
            currency_property_name: String,
            data_sensitivity:
              HubSpotSDK::PropertyCreate::DataSensitivity::OrSymbol,
            description: String,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            number_display_hint:
              HubSpotSDK::PropertyCreate::NumberDisplayHint::OrSymbol,
            options: T::Array[HubSpotSDK::OptionInput],
            referenced_object_type: String,
            show_currency_symbol: T::Boolean
          }
        )
      end
      def to_hash
      end

      module FieldType
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, HubSpotSDK::PropertyCreate::FieldType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOOLEANCHECKBOX =
          T.let(
            :booleancheckbox,
            HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol
          )
        CALCULATION_EQUATION =
          T.let(
            :calculation_equation,
            HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol
          )
        CHECKBOX =
          T.let(:checkbox, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)
        DATE = T.let(:date, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)
        FILE = T.let(:file, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)
        HTML = T.let(:html, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)
        NUMBER =
          T.let(:number, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)
        PHONENUMBER =
          T.let(
            :phonenumber,
            HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol
          )
        RADIO =
          T.let(:radio, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)
        SELECT =
          T.let(:select, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)
        TEXT = T.let(:text, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)
        TEXTAREA =
          T.let(:textarea, HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[HubSpotSDK::PropertyCreate::FieldType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, HubSpotSDK::PropertyCreate::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOOL = T.let(:bool, HubSpotSDK::PropertyCreate::Type::TaggedSymbol)
        DATE = T.let(:date, HubSpotSDK::PropertyCreate::Type::TaggedSymbol)
        DATETIME =
          T.let(:datetime, HubSpotSDK::PropertyCreate::Type::TaggedSymbol)
        ENUMERATION =
          T.let(:enumeration, HubSpotSDK::PropertyCreate::Type::TaggedSymbol)
        NUMBER = T.let(:number, HubSpotSDK::PropertyCreate::Type::TaggedSymbol)
        PHONE_NUMBER =
          T.let(:phone_number, HubSpotSDK::PropertyCreate::Type::TaggedSymbol)
        STRING = T.let(:string, HubSpotSDK::PropertyCreate::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[HubSpotSDK::PropertyCreate::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module DataSensitivity
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubSpotSDK::PropertyCreate::DataSensitivity)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HIGHLY_SENSITIVE =
          T.let(
            :highly_sensitive,
            HubSpotSDK::PropertyCreate::DataSensitivity::TaggedSymbol
          )
        NON_SENSITIVE =
          T.let(
            :non_sensitive,
            HubSpotSDK::PropertyCreate::DataSensitivity::TaggedSymbol
          )
        SENSITIVE =
          T.let(
            :sensitive,
            HubSpotSDK::PropertyCreate::DataSensitivity::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubSpotSDK::PropertyCreate::DataSensitivity::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module NumberDisplayHint
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubSpotSDK::PropertyCreate::NumberDisplayHint)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CURRENCY =
          T.let(
            :currency,
            HubSpotSDK::PropertyCreate::NumberDisplayHint::TaggedSymbol
          )
        DURATION =
          T.let(
            :duration,
            HubSpotSDK::PropertyCreate::NumberDisplayHint::TaggedSymbol
          )
        FORMATTED =
          T.let(
            :formatted,
            HubSpotSDK::PropertyCreate::NumberDisplayHint::TaggedSymbol
          )
        PERCENTAGE =
          T.let(
            :percentage,
            HubSpotSDK::PropertyCreate::NumberDisplayHint::TaggedSymbol
          )
        PROBABILITY =
          T.let(
            :probability,
            HubSpotSDK::PropertyCreate::NumberDisplayHint::TaggedSymbol
          )
        UNFORMATTED =
          T.let(
            :unformatted,
            HubSpotSDK::PropertyCreate::NumberDisplayHint::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::PropertyCreate::NumberDisplayHint::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
