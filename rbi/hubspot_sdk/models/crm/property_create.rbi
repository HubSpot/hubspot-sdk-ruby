# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PropertyCreate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PropertyCreate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Controls how the property appears in HubSpot.
        sig { returns(HubspotSDK::Crm::PropertyCreate::FieldType::OrSymbol) }
        attr_accessor :field_type

        # The name of the property group the property belongs to.
        sig { returns(String) }
        attr_accessor :group_name

        # A human-readable property label that will be shown in HubSpot.
        sig { returns(String) }
        attr_accessor :label

        # The internal property name, which must be used when referencing the property via
        # the API.
        sig { returns(String) }
        attr_accessor :name

        # The data type of the property.
        sig { returns(HubspotSDK::Crm::PropertyCreate::Type::OrSymbol) }
        attr_accessor :type

        # Represents a formula that is used to compute a calculated property.
        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig { returns(T.nilable(String)) }
        attr_reader :currency_property_name

        sig { params(currency_property_name: String).void }
        attr_writer :currency_property_name

        # Indicates the sensitivity level of the property, with options: highly_sensitive,
        # non_sensitive, or sensitive.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Crm::PropertyCreate::DataSensitivity::OrSymbol
            )
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubspotSDK::Crm::PropertyCreate::DataSensitivity::OrSymbol
          ).void
        end
        attr_writer :data_sensitivity

        # A description of the property that will be shown as help text in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Properties are displayed in order starting with the lowest positive integer
        # value. Values of -1 will cause the property to be displayed after any positive
        # values.
        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        # Applicable only for 'enumeration' type properties. Should be set to true in
        # conjunction with a 'referencedObjectType' of 'OWNER'. Otherwise false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :external_options

        sig { params(external_options: T::Boolean).void }
        attr_writer :external_options

        # Whether or not the property can be used in a HubSpot form.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :form_field

        sig { params(form_field: T::Boolean).void }
        attr_writer :form_field

        # Whether or not the property's value must be unique. Once set, this can't be
        # changed.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_unique_value

        sig { params(has_unique_value: T::Boolean).void }
        attr_writer :has_unique_value

        # If true, the property won't be visible and can't be used in HubSpot.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hidden

        sig { params(hidden: T::Boolean).void }
        attr_writer :hidden

        # A list of valid options for the property. This field is required for enumerated
        # properties.
        sig { returns(T.nilable(T::Array[HubspotSDK::OptionInput])) }
        attr_reader :options

        sig { params(options: T::Array[HubspotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        # Should be set to 'OWNER' when 'externalOptions' is true, which causes the
        # property to dynamically pull option values from the current HubSpot users.
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
            field_type: HubspotSDK::Crm::PropertyCreate::FieldType::OrSymbol,
            group_name: String,
            label: String,
            name: String,
            type: HubspotSDK::Crm::PropertyCreate::Type::OrSymbol,
            calculation_formula: String,
            currency_property_name: String,
            data_sensitivity:
              HubspotSDK::Crm::PropertyCreate::DataSensitivity::OrSymbol,
            description: String,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            options: T::Array[HubspotSDK::OptionInput::OrHash],
            referenced_object_type: String,
            show_currency_symbol: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Controls how the property appears in HubSpot.
          field_type:,
          # The name of the property group the property belongs to.
          group_name:,
          # A human-readable property label that will be shown in HubSpot.
          label:,
          # The internal property name, which must be used when referencing the property via
          # the API.
          name:,
          # The data type of the property.
          type:,
          # Represents a formula that is used to compute a calculated property.
          calculation_formula: nil,
          currency_property_name: nil,
          # Indicates the sensitivity level of the property, with options: highly_sensitive,
          # non_sensitive, or sensitive.
          data_sensitivity: nil,
          # A description of the property that will be shown as help text in HubSpot.
          description: nil,
          # Properties are displayed in order starting with the lowest positive integer
          # value. Values of -1 will cause the property to be displayed after any positive
          # values.
          display_order: nil,
          # Applicable only for 'enumeration' type properties. Should be set to true in
          # conjunction with a 'referencedObjectType' of 'OWNER'. Otherwise false.
          external_options: nil,
          # Whether or not the property can be used in a HubSpot form.
          form_field: nil,
          # Whether or not the property's value must be unique. Once set, this can't be
          # changed.
          has_unique_value: nil,
          # If true, the property won't be visible and can't be used in HubSpot.
          hidden: nil,
          # A list of valid options for the property. This field is required for enumerated
          # properties.
          options: nil,
          # Should be set to 'OWNER' when 'externalOptions' is true, which causes the
          # property to dynamically pull option values from the current HubSpot users.
          referenced_object_type: nil,
          show_currency_symbol: nil
        )
        end

        sig do
          override.returns(
            {
              field_type: HubspotSDK::Crm::PropertyCreate::FieldType::OrSymbol,
              group_name: String,
              label: String,
              name: String,
              type: HubspotSDK::Crm::PropertyCreate::Type::OrSymbol,
              calculation_formula: String,
              currency_property_name: String,
              data_sensitivity:
                HubspotSDK::Crm::PropertyCreate::DataSensitivity::OrSymbol,
              description: String,
              display_order: Integer,
              external_options: T::Boolean,
              form_field: T::Boolean,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              options: T::Array[HubspotSDK::OptionInput],
              referenced_object_type: String,
              show_currency_symbol: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Controls how the property appears in HubSpot.
        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PropertyCreate::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Crm::PropertyCreate::FieldType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The data type of the property.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PropertyCreate::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(:bool, HubspotSDK::Crm::PropertyCreate::Type::TaggedSymbol)
          DATE =
            T.let(:date, HubspotSDK::Crm::PropertyCreate::Type::TaggedSymbol)
          DATETIME =
            T.let(
              :datetime,
              HubspotSDK::Crm::PropertyCreate::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubspotSDK::Crm::PropertyCreate::Type::TaggedSymbol
            )
          NUMBER =
            T.let(:number, HubspotSDK::Crm::PropertyCreate::Type::TaggedSymbol)
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubspotSDK::Crm::PropertyCreate::Type::TaggedSymbol
            )
          STRING =
            T.let(:string, HubspotSDK::Crm::PropertyCreate::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Crm::PropertyCreate::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Indicates the sensitivity level of the property, with options: highly_sensitive,
        # non_sensitive, or sensitive.
        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PropertyCreate::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGHLY_SENSITIVE =
            T.let(
              :highly_sensitive,
              HubspotSDK::Crm::PropertyCreate::DataSensitivity::TaggedSymbol
            )
          NON_SENSITIVE =
            T.let(
              :non_sensitive,
              HubspotSDK::Crm::PropertyCreate::DataSensitivity::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :sensitive,
              HubspotSDK::Crm::PropertyCreate::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PropertyCreate::DataSensitivity::TaggedSymbol
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
