# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Property1 < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Property1, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :description

        sig { returns(String) }
        attr_accessor :field_type

        sig { returns(String) }
        attr_accessor :group_name

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Array[HubSpotSDK::Cms::Option1]) }
        attr_accessor :options

        sig { returns(String) }
        attr_accessor :type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :calculated

        sig { params(calculated: T::Boolean).void }
        attr_writer :calculated

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :created_user_id

        sig { params(created_user_id: String).void }
        attr_writer :created_user_id

        sig do
          returns(
            T.nilable(HubSpotSDK::Cms::Property1::DataSensitivity::TaggedSymbol)
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubSpotSDK::Cms::Property1::DataSensitivity::OrSymbol
          ).void
        end
        attr_writer :data_sensitivity

        sig do
          returns(
            T.nilable(HubSpotSDK::Cms::Property1::DateDisplayHint::TaggedSymbol)
          )
        end
        attr_reader :date_display_hint

        sig do
          params(
            date_display_hint:
              HubSpotSDK::Cms::Property1::DateDisplayHint::OrSymbol
          ).void
        end
        attr_writer :date_display_hint

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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hubspot_defined

        sig { params(hubspot_defined: T::Boolean).void }
        attr_writer :hubspot_defined

        sig { returns(T.nilable(HubSpotSDK::PropertyModificationMetadata)) }
        attr_reader :modification_metadata

        sig do
          params(
            modification_metadata:
              HubSpotSDK::PropertyModificationMetadata::OrHash
          ).void
        end
        attr_writer :modification_metadata

        sig { returns(T.nilable(String)) }
        attr_reader :referenced_object_type

        sig { params(referenced_object_type: String).void }
        attr_writer :referenced_object_type

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sensitive_data_categories

        sig { params(sensitive_data_categories: T::Array[String]).void }
        attr_writer :sensitive_data_categories

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_currency_symbol

        sig { params(show_currency_symbol: T::Boolean).void }
        attr_writer :show_currency_symbol

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :updated_user_id

        sig { params(updated_user_id: String).void }
        attr_writer :updated_user_id

        sig do
          params(
            description: String,
            field_type: String,
            group_name: String,
            label: String,
            name: String,
            options: T::Array[HubSpotSDK::Cms::Option1::OrHash],
            type: String,
            archived: T::Boolean,
            archived_at: Time,
            calculated: T::Boolean,
            calculation_formula: String,
            created_at: Time,
            created_user_id: String,
            data_sensitivity:
              HubSpotSDK::Cms::Property1::DataSensitivity::OrSymbol,
            date_display_hint:
              HubSpotSDK::Cms::Property1::DateDisplayHint::OrSymbol,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            hubspot_defined: T::Boolean,
            modification_metadata:
              HubSpotSDK::PropertyModificationMetadata::OrHash,
            referenced_object_type: String,
            sensitive_data_categories: T::Array[String],
            show_currency_symbol: T::Boolean,
            updated_at: Time,
            updated_user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          description:,
          field_type:,
          group_name:,
          label:,
          name:,
          options:,
          type:,
          archived: nil,
          archived_at: nil,
          calculated: nil,
          calculation_formula: nil,
          created_at: nil,
          created_user_id: nil,
          data_sensitivity: nil,
          date_display_hint: nil,
          display_order: nil,
          external_options: nil,
          form_field: nil,
          has_unique_value: nil,
          hidden: nil,
          hubspot_defined: nil,
          modification_metadata: nil,
          referenced_object_type: nil,
          sensitive_data_categories: nil,
          show_currency_symbol: nil,
          updated_at: nil,
          updated_user_id: nil
        )
        end

        sig do
          override.returns(
            {
              description: String,
              field_type: String,
              group_name: String,
              label: String,
              name: String,
              options: T::Array[HubSpotSDK::Cms::Option1],
              type: String,
              archived: T::Boolean,
              archived_at: Time,
              calculated: T::Boolean,
              calculation_formula: String,
              created_at: Time,
              created_user_id: String,
              data_sensitivity:
                HubSpotSDK::Cms::Property1::DataSensitivity::TaggedSymbol,
              date_display_hint:
                HubSpotSDK::Cms::Property1::DateDisplayHint::TaggedSymbol,
              display_order: Integer,
              external_options: T::Boolean,
              form_field: T::Boolean,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              hubspot_defined: T::Boolean,
              modification_metadata: HubSpotSDK::PropertyModificationMetadata,
              referenced_object_type: String,
              sensitive_data_categories: T::Array[String],
              show_currency_symbol: T::Boolean,
              updated_at: Time,
              updated_user_id: String
            }
          )
        end
        def to_hash
        end

        module DataSensitivity
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::Property1::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGHLY_SENSITIVE =
            T.let(
              :highly_sensitive,
              HubSpotSDK::Cms::Property1::DataSensitivity::TaggedSymbol
            )
          NON_SENSITIVE =
            T.let(
              :non_sensitive,
              HubSpotSDK::Cms::Property1::DataSensitivity::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :sensitive,
              HubSpotSDK::Cms::Property1::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::Property1::DataSensitivity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module DateDisplayHint
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::Property1::DateDisplayHint)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE =
            T.let(
              :absolute,
              HubSpotSDK::Cms::Property1::DateDisplayHint::TaggedSymbol
            )
          ABSOLUTE_WITH_RELATIVE =
            T.let(
              :absolute_with_relative,
              HubSpotSDK::Cms::Property1::DateDisplayHint::TaggedSymbol
            )
          TIME_SINCE =
            T.let(
              :time_since,
              HubSpotSDK::Cms::Property1::DateDisplayHint::TaggedSymbol
            )
          TIME_UNTIL =
            T.let(
              :time_until,
              HubSpotSDK::Cms::Property1::DateDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::Property1::DateDisplayHint::TaggedSymbol
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
