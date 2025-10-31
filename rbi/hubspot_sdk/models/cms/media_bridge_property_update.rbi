# typed: strong

module HubspotSDK
  module Models
    module Cms
      class MediaBridgePropertyUpdate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::MediaBridgePropertyUpdate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        sig do
          returns(
            T.nilable(
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol
            )
          )
        end
        attr_reader :field_type

        sig do
          params(
            field_type:
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol
          ).void
        end
        attr_writer :field_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :form_field

        sig { params(form_field: T::Boolean).void }
        attr_writer :form_field

        sig { returns(T.nilable(String)) }
        attr_reader :group_name

        sig { params(group_name: String).void }
        attr_writer :group_name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_unique_value

        sig { params(has_unique_value: T::Boolean).void }
        attr_writer :has_unique_value

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hidden

        sig { params(hidden: T::Boolean).void }
        attr_writer :hidden

        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig { returns(T.nilable(T::Array[HubspotSDK::OptionInput])) }
        attr_reader :options

        sig { params(options: T::Array[HubspotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        sig do
          returns(
            T.nilable(
              HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            calculation_formula: String,
            description: String,
            display_order: Integer,
            field_type:
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol,
            form_field: T::Boolean,
            group_name: String,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            label: String,
            options: T::Array[HubspotSDK::OptionInput::OrHash],
            type: HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          calculation_formula: nil,
          description: nil,
          display_order: nil,
          field_type: nil,
          form_field: nil,
          group_name: nil,
          has_unique_value: nil,
          hidden: nil,
          label: nil,
          options: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              calculation_formula: String,
              description: String,
              display_order: Integer,
              field_type:
                HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol,
              form_field: T::Boolean,
              group_name: String,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              label: String,
              options: T::Array[HubspotSDK::OptionInput],
              type: HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol
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
                HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::MediaBridgePropertyUpdate::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :bool,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          DATETIME =
            T.let(
              :datetime,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
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
