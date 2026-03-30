# frozen_string_literal: true

module HubspotSDK
  module Models
    class Property < HubspotSDK::Internal::Type::BaseModel
      # @!attribute description
      #   A description of the property that will be shown as help text in HubSpot.
      #
      #   @return [String]
      required :description, String

      # @!attribute field_type
      #   Controls how the property appears in HubSpot.
      #
      #   @return [String]
      required :field_type, String, api_name: :fieldType

      # @!attribute group_name
      #   The name of the property group the property belongs to.
      #
      #   @return [String]
      required :group_name, String, api_name: :groupName

      # @!attribute label
      #   A human-readable property label that will be shown in HubSpot.
      #
      #   @return [String]
      required :label, String

      # @!attribute name
      #   The internal property name, which must be used when referencing the property via
      #   the API.
      #
      #   @return [String]
      required :name, String

      # @!attribute options
      #   A list of valid options for the property. This field is required for enumerated
      #   properties, but will be empty for other property types.
      #
      #   @return [Array<HubspotSDK::Models::Option>]
      required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option] }

      # @!attribute type
      #   The property data type.
      #
      #   @return [String]
      required :type, String

      # @!attribute archived
      #   Whether or not the property is archived.
      #
      #   @return [Boolean, nil]
      optional :archived, HubspotSDK::Internal::Type::Boolean

      # @!attribute archived_at
      #   When the property was archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time, api_name: :archivedAt

      # @!attribute calculated
      #   For default properties, true indicates that the property is calculated by a
      #   HubSpot process. It has no effect for custom properties.
      #
      #   @return [Boolean, nil]
      optional :calculated, HubspotSDK::Internal::Type::Boolean

      # @!attribute calculation_formula
      #   The formula used for calculated properties.
      #
      #   @return [String, nil]
      optional :calculation_formula, String, api_name: :calculationFormula

      # @!attribute created_at
      #   When the property was created
      #
      #   @return [Time, nil]
      optional :created_at, Time, api_name: :createdAt

      # @!attribute created_user_id
      #   The internal ID of the user who created the property in HubSpot. This field may
      #   not exist if the property was created outside of HubSpot.
      #
      #   @return [String, nil]
      optional :created_user_id, String, api_name: :createdUserId

      # @!attribute data_sensitivity
      #   Indicates the sensitivity level of the property, such as "non_sensitive",
      #   "sensitive", or "highly_sensitive".
      #
      #   @return [Symbol, HubspotSDK::Models::Property::DataSensitivity, nil]
      optional :data_sensitivity,
               enum: -> {
                 HubspotSDK::Property::DataSensitivity
               },
               api_name: :dataSensitivity

      # @!attribute date_display_hint
      #   Controls how date properties are displayed in the HubSpot UI, with options such
      #   as 'absolute', 'absolute_with_relative', 'time_since', and 'time_until'.
      #
      #   @return [Symbol, HubspotSDK::Models::Property::DateDisplayHint, nil]
      optional :date_display_hint,
               enum: -> { HubspotSDK::Property::DateDisplayHint },
               api_name: :dateDisplayHint

      # @!attribute display_order
      #   The order that this property should be displayed in the HubSpot UI relative to
      #   other properties for this object type. Properties are displayed in order
      #   starting with the lowest positive integer value. A value of -1 will cause the
      #   property to be displayed **after** any positive values.
      #
      #   @return [Integer, nil]
      optional :display_order, Integer, api_name: :displayOrder

      # @!attribute external_options
      #   For default properties, true indicates that the options are stored externally to
      #   the property settings.
      #
      #   @return [Boolean, nil]
      optional :external_options, HubspotSDK::Internal::Type::Boolean, api_name: :externalOptions

      # @!attribute form_field
      #   Whether or not the property can be used in a HubSpot form.
      #
      #   @return [Boolean, nil]
      optional :form_field, HubspotSDK::Internal::Type::Boolean, api_name: :formField

      # @!attribute has_unique_value
      #   Whether or not the property's value must be unique. Once set, this can't be
      #   changed.
      #
      #   @return [Boolean, nil]
      optional :has_unique_value, HubspotSDK::Internal::Type::Boolean, api_name: :hasUniqueValue

      # @!attribute hidden
      #   Hidden options won't be shown in HubSpot.
      #
      #   @return [Boolean, nil]
      optional :hidden, HubspotSDK::Internal::Type::Boolean

      # @!attribute hubspot_defined
      #   This will be true for default object properties built into HubSpot.
      #
      #   @return [Boolean, nil]
      optional :hubspot_defined, HubspotSDK::Internal::Type::Boolean, api_name: :hubspotDefined

      # @!attribute modification_metadata
      #
      #   @return [HubspotSDK::Models::PropertyModificationMetadata, nil]
      optional :modification_metadata,
               -> { HubspotSDK::PropertyModificationMetadata },
               api_name: :modificationMetadata

      # @!attribute referenced_object_type
      #   If this property is related to other object(s), they'll be listed here.
      #
      #   @return [String, nil]
      optional :referenced_object_type, String, api_name: :referencedObjectType

      # @!attribute sensitive_data_categories
      #   When sensitiveData is true, lists the type of sensitive data contained in the
      #   property (e.g., "HIPAA").
      #
      #   @return [Array<String>, nil]
      optional :sensitive_data_categories,
               HubspotSDK::Internal::Type::ArrayOf[String],
               api_name: :sensitiveDataCategories

      # @!attribute show_currency_symbol
      #   Whether the property will display the currency symbol set in the account
      #   settings.
      #
      #   @return [Boolean, nil]
      optional :show_currency_symbol, HubspotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

      # @!attribute updated_at
      #   When the object type was last updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time, api_name: :updatedAt

      # @!attribute updated_user_id
      #   The internal user ID of the user who updated the property in HubSpot. This field
      #   may not exist if the property was updated outside of HubSpot.
      #
      #   @return [String, nil]
      optional :updated_user_id, String, api_name: :updatedUserId

      # @!method initialize(description:, field_type:, group_name:, label:, name:, options:, type:, archived: nil, archived_at: nil, calculated: nil, calculation_formula: nil, created_at: nil, created_user_id: nil, data_sensitivity: nil, date_display_hint: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, hubspot_defined: nil, modification_metadata: nil, referenced_object_type: nil, sensitive_data_categories: nil, show_currency_symbol: nil, updated_at: nil, updated_user_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubspotSDK::Models::Property} for more details.
      #
      #   A HubSpot property
      #
      #   @param description [String] A description of the property that will be shown as help text in HubSpot.
      #
      #   @param field_type [String] Controls how the property appears in HubSpot.
      #
      #   @param group_name [String] The name of the property group the property belongs to.
      #
      #   @param label [String] A human-readable property label that will be shown in HubSpot.
      #
      #   @param name [String] The internal property name, which must be used when referencing the property via
      #
      #   @param options [Array<HubspotSDK::Models::Option>] A list of valid options for the property. This field is required for enumerated
      #
      #   @param type [String] The property data type.
      #
      #   @param archived [Boolean] Whether or not the property is archived.
      #
      #   @param archived_at [Time] When the property was archived.
      #
      #   @param calculated [Boolean] For default properties, true indicates that the property is calculated by a HubS
      #
      #   @param calculation_formula [String] The formula used for calculated properties.
      #
      #   @param created_at [Time] When the property was created
      #
      #   @param created_user_id [String] The internal ID of the user who created the property in HubSpot. This field may
      #
      #   @param data_sensitivity [Symbol, HubspotSDK::Models::Property::DataSensitivity] Indicates the sensitivity level of the property, such as "non_sensitive", "sensi
      #
      #   @param date_display_hint [Symbol, HubspotSDK::Models::Property::DateDisplayHint] Controls how date properties are displayed in the HubSpot UI, with options such
      #
      #   @param display_order [Integer] The order that this property should be displayed in the HubSpot UI relative to o
      #
      #   @param external_options [Boolean] For default properties, true indicates that the options are stored externally to
      #
      #   @param form_field [Boolean] Whether or not the property can be used in a HubSpot form.
      #
      #   @param has_unique_value [Boolean] Whether or not the property's value must be unique. Once set, this can't be chan
      #
      #   @param hidden [Boolean] Hidden options won't be shown in HubSpot.
      #
      #   @param hubspot_defined [Boolean] This will be true for default object properties built into HubSpot.
      #
      #   @param modification_metadata [HubspotSDK::Models::PropertyModificationMetadata]
      #
      #   @param referenced_object_type [String] If this property is related to other object(s), they'll be listed here.
      #
      #   @param sensitive_data_categories [Array<String>] When sensitiveData is true, lists the type of sensitive data contained in the pr
      #
      #   @param show_currency_symbol [Boolean] Whether the property will display the currency symbol set in the account setting
      #
      #   @param updated_at [Time] When the object type was last updated.
      #
      #   @param updated_user_id [String] The internal user ID of the user who updated the property in HubSpot. This field

      # Indicates the sensitivity level of the property, such as "non_sensitive",
      # "sensitive", or "highly_sensitive".
      #
      # @see HubspotSDK::Models::Property#data_sensitivity
      module DataSensitivity
        extend HubspotSDK::Internal::Type::Enum

        HIGHLY_SENSITIVE = :highly_sensitive
        NON_SENSITIVE = :non_sensitive
        SENSITIVE = :sensitive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls how date properties are displayed in the HubSpot UI, with options such
      # as 'absolute', 'absolute_with_relative', 'time_since', and 'time_until'.
      #
      # @see HubspotSDK::Models::Property#date_display_hint
      module DateDisplayHint
        extend HubspotSDK::Internal::Type::Enum

        ABSOLUTE = :absolute
        ABSOLUTE_WITH_RELATIVE = :absolute_with_relative
        TIME_SINCE = :time_since
        TIME_UNTIL = :time_until

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
