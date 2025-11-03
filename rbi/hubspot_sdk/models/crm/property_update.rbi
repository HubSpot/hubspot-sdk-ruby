# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PropertyUpdate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PropertyUpdate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Represents a formula that is used to compute a calculated property.
        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        # A description of the property that will be shown as help text in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Properties are displayed in order starting with the lowest positive integer
        # value. Values of -1 will cause the Property to be displayed after any positive
        # values.
        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        # Controls how the property appears in HubSpot.
        sig do
          returns(
            T.nilable(HubspotSDK::Crm::PropertyUpdate::FieldType::OrSymbol)
          )
        end
        attr_reader :field_type

        sig do
          params(
            field_type: HubspotSDK::Crm::PropertyUpdate::FieldType::OrSymbol
          ).void
        end
        attr_writer :field_type

        # Whether or not the property can be used in a HubSpot form.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :form_field

        sig { params(form_field: T::Boolean).void }
        attr_writer :form_field

        # The name of the property group the property belongs to.
        sig { returns(T.nilable(String)) }
        attr_reader :group_name

        sig { params(group_name: String).void }
        attr_writer :group_name

        # If true, the property won't be visible and can't be used in HubSpot.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hidden

        sig { params(hidden: T::Boolean).void }
        attr_writer :hidden

        # A human-readable property label that will be shown in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # A list of valid options for the property.
        sig { returns(T.nilable(T::Array[HubspotSDK::OptionInput])) }
        attr_reader :options

        sig { params(options: T::Array[HubspotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        # The data type of the property.
        sig do
          returns(T.nilable(HubspotSDK::Crm::PropertyUpdate::Type::OrSymbol))
        end
        attr_reader :type

        sig do
          params(type: HubspotSDK::Crm::PropertyUpdate::Type::OrSymbol).void
        end
        attr_writer :type

        sig do
          params(
            calculation_formula: String,
            description: String,
            display_order: Integer,
            field_type: HubspotSDK::Crm::PropertyUpdate::FieldType::OrSymbol,
            form_field: T::Boolean,
            group_name: String,
            hidden: T::Boolean,
            label: String,
            options: T::Array[HubspotSDK::OptionInput::OrHash],
            type: HubspotSDK::Crm::PropertyUpdate::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a formula that is used to compute a calculated property.
          calculation_formula: nil,
          # A description of the property that will be shown as help text in HubSpot.
          description: nil,
          # Properties are displayed in order starting with the lowest positive integer
          # value. Values of -1 will cause the Property to be displayed after any positive
          # values.
          display_order: nil,
          # Controls how the property appears in HubSpot.
          field_type: nil,
          # Whether or not the property can be used in a HubSpot form.
          form_field: nil,
          # The name of the property group the property belongs to.
          group_name: nil,
          # If true, the property won't be visible and can't be used in HubSpot.
          hidden: nil,
          # A human-readable property label that will be shown in HubSpot.
          label: nil,
          # A list of valid options for the property.
          options: nil,
          # The data type of the property.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              calculation_formula: String,
              description: String,
              display_order: Integer,
              field_type: HubspotSDK::Crm::PropertyUpdate::FieldType::OrSymbol,
              form_field: T::Boolean,
              group_name: String,
              hidden: T::Boolean,
              label: String,
              options: T::Array[HubspotSDK::OptionInput],
              type: HubspotSDK::Crm::PropertyUpdate::Type::OrSymbol
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
              T.all(Symbol, HubspotSDK::Crm::PropertyUpdate::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Crm::PropertyUpdate::FieldType::TaggedSymbol]
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
              T.all(Symbol, HubspotSDK::Crm::PropertyUpdate::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(:bool, HubspotSDK::Crm::PropertyUpdate::Type::TaggedSymbol)
          DATE =
            T.let(:date, HubspotSDK::Crm::PropertyUpdate::Type::TaggedSymbol)
          DATETIME =
            T.let(
              :datetime,
              HubspotSDK::Crm::PropertyUpdate::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubspotSDK::Crm::PropertyUpdate::Type::TaggedSymbol
            )
          NUMBER =
            T.let(:number, HubspotSDK::Crm::PropertyUpdate::Type::TaggedSymbol)
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubspotSDK::Crm::PropertyUpdate::Type::TaggedSymbol
            )
          STRING =
            T.let(:string, HubspotSDK::Crm::PropertyUpdate::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Crm::PropertyUpdate::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
