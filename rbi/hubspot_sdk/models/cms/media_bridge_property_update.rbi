# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaBridgePropertyUpdate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaBridgePropertyUpdate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig { returns(T.nilable(String)) }
        attr_reader :currency_property_name

        sig { params(currency_property_name: String).void }
        attr_writer :currency_property_name

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
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol
            )
          )
        end
        attr_reader :field_type

        sig do
          params(
            field_type:
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol
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

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::OrSymbol
            )
          )
        end
        attr_reader :number_display_hint

        sig do
          params(
            number_display_hint:
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::OrSymbol
          ).void
        end
        attr_writer :number_display_hint

        sig { returns(T.nilable(T::Array[HubSpotSDK::OptionInput])) }
        attr_reader :options

        sig { params(options: T::Array[HubSpotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_currency_symbol

        sig { params(show_currency_symbol: T::Boolean).void }
        attr_writer :show_currency_symbol

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            calculation_formula: String,
            currency_property_name: String,
            description: String,
            display_order: Integer,
            field_type:
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol,
            form_field: T::Boolean,
            group_name: String,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            label: String,
            number_display_hint:
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::OrSymbol,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
            show_currency_symbol: T::Boolean,
            type: HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          calculation_formula: nil,
          currency_property_name: nil,
          description: nil,
          display_order: nil,
          field_type: nil,
          form_field: nil,
          group_name: nil,
          has_unique_value: nil,
          hidden: nil,
          label: nil,
          number_display_hint: nil,
          options: nil,
          show_currency_symbol: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              calculation_formula: String,
              currency_property_name: String,
              description: String,
              display_order: Integer,
              field_type:
                HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol,
              form_field: T::Boolean,
              group_name: String,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              label: String,
              number_display_hint:
                HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::OrSymbol,
              options: T::Array[HubSpotSDK::OptionInput],
              show_currency_symbol: T::Boolean,
              type: HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module FieldType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEANCHECKBOX =
            T.let(
              :booleancheckbox,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          CALCULATION_EQUATION =
            T.let(
              :calculation_equation,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          CHECKBOX =
            T.let(
              :checkbox,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          FILE =
            T.let(
              :file,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          PHONENUMBER =
            T.let(
              :phonenumber,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          RADIO =
            T.let(
              :radio,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          SELECT =
            T.let(
              :select,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )
          TEXTAREA =
            T.let(
              :textarea,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module NumberDisplayHint
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CURRENCY =
            T.let(
              :currency,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::TaggedSymbol
            )
          DURATION =
            T.let(
              :duration,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::TaggedSymbol
            )
          FORMATTED =
            T.let(
              :formatted,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::TaggedSymbol
            )
          PERCENTAGE =
            T.let(
              :percentage,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::TaggedSymbol
            )
          PROBABILITY =
            T.let(
              :probability,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::TaggedSymbol
            )
          UNFORMATTED =
            T.let(
              :unformatted,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOL =
            T.let(
              :bool,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          DATETIME =
            T.let(
              :datetime,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::TaggedSymbol
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
