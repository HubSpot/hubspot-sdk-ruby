# typed: strong

module HubspotSDK
  module Models
    module Events
      class Property < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Events::Property, HubspotSDK::Internal::AnyHash)
          end

        # A summary of the property's purpose.
        sig { returns(String) }
        attr_accessor :description

        # Determines how the property will appear in HubSpot's UI or on a form. Learn more
        # in the properties API guide.
        sig { returns(String) }
        attr_accessor :field_type

        # The name of the group to which the property is assigned.
        sig { returns(String) }
        attr_accessor :group_name

        # The display label for the property.
        sig { returns(String) }
        attr_accessor :label

        # The internal name for the property.
        sig { returns(String) }
        attr_accessor :name

        # A list of valid options for the property. This field is required for enumerated
        # properties.
        sig { returns(T::Array[HubspotSDK::Events::Option]) }
        attr_accessor :options

        # The data type of the property, such as string or number.
        sig { returns(String) }
        attr_accessor :type

        # Whether the property is archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # The timestamp when the property was archived, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        # Whether the property is a calculated field.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :calculated

        sig { params(calculated: T::Boolean).void }
        attr_writer :calculated

        # The formula used for calculated properties.
        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        # The timestamp when the property was created, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The ID of the user who created the property.
        sig { returns(T.nilable(String)) }
        attr_reader :created_user_id

        sig { params(created_user_id: String).void }
        attr_writer :created_user_id

        # Indicates the sensitivity level of the property, such as "non_sensitive",
        # "sensitive", or "highly_sensitive".
        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::Property::DataSensitivity::TaggedSymbol
            )
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubspotSDK::Events::Property::DataSensitivity::OrSymbol
          ).void
        end
        attr_writer :data_sensitivity

        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::Property::DateDisplayHint::TaggedSymbol
            )
          )
        end
        attr_reader :date_display_hint

        sig do
          params(
            date_display_hint:
              HubspotSDK::Events::Property::DateDisplayHint::OrSymbol
          ).void
        end
        attr_writer :date_display_hint

        # The position of the item relative to others in the list.
        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        # Applicable only for enumeration type properties. Should be set to true with a
        # 'referencedObjectType' of 'OWNER'. Otherwise false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :external_options

        sig { params(external_options: T::Boolean).void }
        attr_writer :external_options

        # Whether the property can appear on forms.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :form_field

        sig { params(form_field: T::Boolean).void }
        attr_writer :form_field

        # Whether the property is a unique identifier property.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_unique_value

        sig { params(has_unique_value: T::Boolean).void }
        attr_writer :has_unique_value

        # Whether or not the property will be hidden from the HubSpot UI. It's recommended
        # that this be set to false for custom properties.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hidden

        sig { params(hidden: T::Boolean).void }
        attr_writer :hidden

        # A boolean value set to true for HubSpot default properties.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hubspot_defined

        sig { params(hubspot_defined: T::Boolean).void }
        attr_writer :hubspot_defined

        sig do
          returns(T.nilable(HubspotSDK::Events::PropertyModificationMetadata))
        end
        attr_reader :modification_metadata

        sig do
          params(
            modification_metadata:
              HubspotSDK::Events::PropertyModificationMetadata::OrHash
          ).void
        end
        attr_writer :modification_metadata

        # Deprecated. Use externalOptionsReferenceType instead.
        sig { returns(T.nilable(String)) }
        attr_reader :referenced_object_type

        sig { params(referenced_object_type: String).void }
        attr_writer :referenced_object_type

        # When sensitiveData is true, lists the type of sensitive data contained in the
        # property (e.g., "HIPAA").
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sensitive_data_categories

        sig { params(sensitive_data_categories: T::Array[String]).void }
        attr_writer :sensitive_data_categories

        # Whether to show the currency symbol in HubSpot's UI.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_currency_symbol

        sig { params(show_currency_symbol: T::Boolean).void }
        attr_writer :show_currency_symbol

        # The timestamp when the property was last updated, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :updated_user_id

        sig { params(updated_user_id: String).void }
        attr_writer :updated_user_id

        # A HubSpot property
        sig do
          params(
            description: String,
            field_type: String,
            group_name: String,
            label: String,
            name: String,
            options: T::Array[HubspotSDK::Events::Option::OrHash],
            type: String,
            archived: T::Boolean,
            archived_at: Time,
            calculated: T::Boolean,
            calculation_formula: String,
            created_at: Time,
            created_user_id: String,
            data_sensitivity:
              HubspotSDK::Events::Property::DataSensitivity::OrSymbol,
            date_display_hint:
              HubspotSDK::Events::Property::DateDisplayHint::OrSymbol,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            hubspot_defined: T::Boolean,
            modification_metadata:
              HubspotSDK::Events::PropertyModificationMetadata::OrHash,
            referenced_object_type: String,
            sensitive_data_categories: T::Array[String],
            show_currency_symbol: T::Boolean,
            updated_at: Time,
            updated_user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A summary of the property's purpose.
          description:,
          # Determines how the property will appear in HubSpot's UI or on a form. Learn more
          # in the properties API guide.
          field_type:,
          # The name of the group to which the property is assigned.
          group_name:,
          # The display label for the property.
          label:,
          # The internal name for the property.
          name:,
          # A list of valid options for the property. This field is required for enumerated
          # properties.
          options:,
          # The data type of the property, such as string or number.
          type:,
          # Whether the property is archived.
          archived: nil,
          # The timestamp when the property was archived, in ISO 8601 format.
          archived_at: nil,
          # Whether the property is a calculated field.
          calculated: nil,
          # The formula used for calculated properties.
          calculation_formula: nil,
          # The timestamp when the property was created, in ISO 8601 format.
          created_at: nil,
          # The ID of the user who created the property.
          created_user_id: nil,
          # Indicates the sensitivity level of the property, such as "non_sensitive",
          # "sensitive", or "highly_sensitive".
          data_sensitivity: nil,
          date_display_hint: nil,
          # The position of the item relative to others in the list.
          display_order: nil,
          # Applicable only for enumeration type properties. Should be set to true with a
          # 'referencedObjectType' of 'OWNER'. Otherwise false.
          external_options: nil,
          # Whether the property can appear on forms.
          form_field: nil,
          # Whether the property is a unique identifier property.
          has_unique_value: nil,
          # Whether or not the property will be hidden from the HubSpot UI. It's recommended
          # that this be set to false for custom properties.
          hidden: nil,
          # A boolean value set to true for HubSpot default properties.
          hubspot_defined: nil,
          modification_metadata: nil,
          # Deprecated. Use externalOptionsReferenceType instead.
          referenced_object_type: nil,
          # When sensitiveData is true, lists the type of sensitive data contained in the
          # property (e.g., "HIPAA").
          sensitive_data_categories: nil,
          # Whether to show the currency symbol in HubSpot's UI.
          show_currency_symbol: nil,
          # The timestamp when the property was last updated, in ISO 8601 format.
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
              options: T::Array[HubspotSDK::Events::Option],
              type: String,
              archived: T::Boolean,
              archived_at: Time,
              calculated: T::Boolean,
              calculation_formula: String,
              created_at: Time,
              created_user_id: String,
              data_sensitivity:
                HubspotSDK::Events::Property::DataSensitivity::TaggedSymbol,
              date_display_hint:
                HubspotSDK::Events::Property::DateDisplayHint::TaggedSymbol,
              display_order: Integer,
              external_options: T::Boolean,
              form_field: T::Boolean,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              hubspot_defined: T::Boolean,
              modification_metadata:
                HubspotSDK::Events::PropertyModificationMetadata,
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

        # Indicates the sensitivity level of the property, such as "non_sensitive",
        # "sensitive", or "highly_sensitive".
        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::Property::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGHLY_SENSITIVE =
            T.let(
              :highly_sensitive,
              HubspotSDK::Events::Property::DataSensitivity::TaggedSymbol
            )
          NON_SENSITIVE =
            T.let(
              :non_sensitive,
              HubspotSDK::Events::Property::DataSensitivity::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :sensitive,
              HubspotSDK::Events::Property::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::Property::DataSensitivity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module DateDisplayHint
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::Property::DateDisplayHint)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE =
            T.let(
              :absolute,
              HubspotSDK::Events::Property::DateDisplayHint::TaggedSymbol
            )
          ABSOLUTE_WITH_RELATIVE =
            T.let(
              :absolute_with_relative,
              HubspotSDK::Events::Property::DateDisplayHint::TaggedSymbol
            )
          TIME_SINCE =
            T.let(
              :time_since,
              HubspotSDK::Events::Property::DateDisplayHint::TaggedSymbol
            )
          TIME_UNTIL =
            T.let(
              :time_until,
              HubspotSDK::Events::Property::DateDisplayHint::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::Property::DateDisplayHint::TaggedSymbol
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
