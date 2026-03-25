# typed: strong

module HubspotSDK
  module Models
    class Property < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::Property, HubspotSDK::Internal::AnyHash)
        end

      # A description of the property that will be shown as help text in HubSpot.
      sig { returns(String) }
      attr_accessor :description

      # Controls how the property appears in HubSpot.
      sig { returns(String) }
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

      # A list of valid options for the property. This field is required for enumerated
      # properties, but will be empty for other property types.
      sig { returns(T::Array[HubspotSDK::Option]) }
      attr_accessor :options

      # The property data type.
      sig { returns(String) }
      attr_accessor :type

      # Whether or not the property is archived.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archived

      sig { params(archived: T::Boolean).void }
      attr_writer :archived

      # When the property was archived.
      sig { returns(T.nilable(Time)) }
      attr_reader :archived_at

      sig { params(archived_at: Time).void }
      attr_writer :archived_at

      # For default properties, true indicates that the property is calculated by a
      # HubSpot process. It has no effect for custom properties.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :calculated

      sig { params(calculated: T::Boolean).void }
      attr_writer :calculated

      # The formula used for calculated properties.
      sig { returns(T.nilable(String)) }
      attr_reader :calculation_formula

      sig { params(calculation_formula: String).void }
      attr_writer :calculation_formula

      # When the property was created
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The internal ID of the user who created the property in HubSpot. This field may
      # not exist if the property was created outside of HubSpot.
      sig { returns(T.nilable(String)) }
      attr_reader :created_user_id

      sig { params(created_user_id: String).void }
      attr_writer :created_user_id

      # Indicates the sensitivity level of the property, such as "non_sensitive",
      # "sensitive", or "highly_sensitive".
      sig do
        returns(T.nilable(HubspotSDK::Property::DataSensitivity::TaggedSymbol))
      end
      attr_reader :data_sensitivity

      sig do
        params(
          data_sensitivity: HubspotSDK::Property::DataSensitivity::OrSymbol
        ).void
      end
      attr_writer :data_sensitivity

      sig do
        returns(T.nilable(HubspotSDK::Property::DateDisplayHint::TaggedSymbol))
      end
      attr_reader :date_display_hint

      sig do
        params(
          date_display_hint: HubspotSDK::Property::DateDisplayHint::OrSymbol
        ).void
      end
      attr_writer :date_display_hint

      # The order that this property should be displayed in the HubSpot UI relative to
      # other properties for this object type. Properties are displayed in order
      # starting with the lowest positive integer value. A value of -1 will cause the
      # property to be displayed **after** any positive values.
      sig { returns(T.nilable(Integer)) }
      attr_reader :display_order

      sig { params(display_order: Integer).void }
      attr_writer :display_order

      # For default properties, true indicates that the options are stored externally to
      # the property settings.
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

      # Whether or not the property will be hidden from the HubSpot UI. It's recommended
      # that this be set to false for custom properties.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :hidden

      sig { params(hidden: T::Boolean).void }
      attr_writer :hidden

      # This will be true for default object properties built into HubSpot.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :hubspot_defined

      sig { params(hubspot_defined: T::Boolean).void }
      attr_writer :hubspot_defined

      sig { returns(T.nilable(HubspotSDK::PropertyModificationMetadata)) }
      attr_reader :modification_metadata

      sig do
        params(
          modification_metadata:
            HubspotSDK::PropertyModificationMetadata::OrHash
        ).void
      end
      attr_writer :modification_metadata

      # If this property is related to other object(s), they'll be listed here.
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

      # Whether the property will display the currency symbol set in the account
      # settings.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_currency_symbol

      sig { params(show_currency_symbol: T::Boolean).void }
      attr_writer :show_currency_symbol

      # The timestamp when the property was last updated, in ISO 8601 format.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The internal user ID of the user who updated the property in HubSpot. This field
      # may not exist if the property was updated outside of HubSpot.
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
          options: T::Array[HubspotSDK::Option::OrHash],
          type: String,
          archived: T::Boolean,
          archived_at: Time,
          calculated: T::Boolean,
          calculation_formula: String,
          created_at: Time,
          created_user_id: String,
          data_sensitivity: HubspotSDK::Property::DataSensitivity::OrSymbol,
          date_display_hint: HubspotSDK::Property::DateDisplayHint::OrSymbol,
          display_order: Integer,
          external_options: T::Boolean,
          form_field: T::Boolean,
          has_unique_value: T::Boolean,
          hidden: T::Boolean,
          hubspot_defined: T::Boolean,
          modification_metadata:
            HubspotSDK::PropertyModificationMetadata::OrHash,
          referenced_object_type: String,
          sensitive_data_categories: T::Array[String],
          show_currency_symbol: T::Boolean,
          updated_at: Time,
          updated_user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A description of the property that will be shown as help text in HubSpot.
        description:,
        # Controls how the property appears in HubSpot.
        field_type:,
        # The name of the property group the property belongs to.
        group_name:,
        # A human-readable property label that will be shown in HubSpot.
        label:,
        # The internal property name, which must be used when referencing the property via
        # the API.
        name:,
        # A list of valid options for the property. This field is required for enumerated
        # properties, but will be empty for other property types.
        options:,
        # The property data type.
        type:,
        # Whether or not the property is archived.
        archived: nil,
        # When the property was archived.
        archived_at: nil,
        # For default properties, true indicates that the property is calculated by a
        # HubSpot process. It has no effect for custom properties.
        calculated: nil,
        # The formula used for calculated properties.
        calculation_formula: nil,
        # When the property was created
        created_at: nil,
        # The internal ID of the user who created the property in HubSpot. This field may
        # not exist if the property was created outside of HubSpot.
        created_user_id: nil,
        # Indicates the sensitivity level of the property, such as "non_sensitive",
        # "sensitive", or "highly_sensitive".
        data_sensitivity: nil,
        date_display_hint: nil,
        # The order that this property should be displayed in the HubSpot UI relative to
        # other properties for this object type. Properties are displayed in order
        # starting with the lowest positive integer value. A value of -1 will cause the
        # property to be displayed **after** any positive values.
        display_order: nil,
        # For default properties, true indicates that the options are stored externally to
        # the property settings.
        external_options: nil,
        # Whether or not the property can be used in a HubSpot form.
        form_field: nil,
        # Whether or not the property's value must be unique. Once set, this can't be
        # changed.
        has_unique_value: nil,
        # Whether or not the property will be hidden from the HubSpot UI. It's recommended
        # that this be set to false for custom properties.
        hidden: nil,
        # This will be true for default object properties built into HubSpot.
        hubspot_defined: nil,
        modification_metadata: nil,
        # If this property is related to other object(s), they'll be listed here.
        referenced_object_type: nil,
        # When sensitiveData is true, lists the type of sensitive data contained in the
        # property (e.g., "HIPAA").
        sensitive_data_categories: nil,
        # Whether the property will display the currency symbol set in the account
        # settings.
        show_currency_symbol: nil,
        # The timestamp when the property was last updated, in ISO 8601 format.
        updated_at: nil,
        # The internal user ID of the user who updated the property in HubSpot. This field
        # may not exist if the property was updated outside of HubSpot.
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
            options: T::Array[HubspotSDK::Option],
            type: String,
            archived: T::Boolean,
            archived_at: Time,
            calculated: T::Boolean,
            calculation_formula: String,
            created_at: Time,
            created_user_id: String,
            data_sensitivity:
              HubspotSDK::Property::DataSensitivity::TaggedSymbol,
            date_display_hint:
              HubspotSDK::Property::DateDisplayHint::TaggedSymbol,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            hubspot_defined: T::Boolean,
            modification_metadata: HubspotSDK::PropertyModificationMetadata,
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
          T.type_alias { T.all(Symbol, HubspotSDK::Property::DataSensitivity) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HIGHLY_SENSITIVE =
          T.let(
            :highly_sensitive,
            HubspotSDK::Property::DataSensitivity::TaggedSymbol
          )
        NON_SENSITIVE =
          T.let(
            :non_sensitive,
            HubspotSDK::Property::DataSensitivity::TaggedSymbol
          )
        SENSITIVE =
          T.let(:sensitive, HubspotSDK::Property::DataSensitivity::TaggedSymbol)

        sig do
          override.returns(
            T::Array[HubspotSDK::Property::DataSensitivity::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module DateDisplayHint
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, HubspotSDK::Property::DateDisplayHint) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABSOLUTE =
          T.let(:absolute, HubspotSDK::Property::DateDisplayHint::TaggedSymbol)
        ABSOLUTE_WITH_RELATIVE =
          T.let(
            :absolute_with_relative,
            HubspotSDK::Property::DateDisplayHint::TaggedSymbol
          )
        TIME_SINCE =
          T.let(
            :time_since,
            HubspotSDK::Property::DateDisplayHint::TaggedSymbol
          )
        TIME_UNTIL =
          T.let(
            :time_until,
            HubspotSDK::Property::DateDisplayHint::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::Property::DateDisplayHint::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
