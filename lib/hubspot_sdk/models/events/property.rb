# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      # @see HubSpotSDK::Resources::Events::Definitions#create_property
      class Property < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute description
        #   A summary of the property's purpose.
        #
        #   @return [String]
        required :description, String

        # @!attribute field_type
        #   Determines how the property will appear in HubSpot's UI or on a form. Learn more
        #   in the properties API guide.
        #
        #   @return [String]
        required :field_type, String, api_name: :fieldType

        # @!attribute group_name
        #   The name of the group to which the property is assigned.
        #
        #   @return [String]
        required :group_name, String, api_name: :groupName

        # @!attribute label
        #   The display label for the property.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The internal name for the property.
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #   A list of valid options for the property. This field is required for enumerated
        #   properties.
        #
        #   @return [Array<HubSpotSDK::Models::Option>]
        required :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Option] }

        # @!attribute type
        #   The data type of the property, such as string or number.
        #
        #   @return [String]
        required :type, String

        # @!attribute archived
        #   Whether the property is archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubSpotSDK::Internal::Type::Boolean

        # @!attribute archived_at
        #   The timestamp when the property was archived, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!attribute calculated
        #   Whether the property is a calculated field.
        #
        #   @return [Boolean, nil]
        optional :calculated, HubSpotSDK::Internal::Type::Boolean

        # @!attribute calculation_formula
        #   The formula used for calculated properties.
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute created_at
        #   The timestamp when the property was created, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_user_id
        #   The ID of the user who created the property.
        #
        #   @return [String, nil]
        optional :created_user_id, String, api_name: :createdUserId

        # @!attribute data_sensitivity
        #   Indicates the sensitivity level of the property, such as "non_sensitive",
        #   "sensitive", or "highly_sensitive".
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::Property::DataSensitivity, nil]
        optional :data_sensitivity,
                 enum: -> { HubSpotSDK::Events::Property::DataSensitivity },
                 api_name: :dataSensitivity

        # @!attribute date_display_hint
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::Property::DateDisplayHint, nil]
        optional :date_display_hint,
                 enum: -> { HubSpotSDK::Events::Property::DateDisplayHint },
                 api_name: :dateDisplayHint

        # @!attribute display_order
        #   The position of the item relative to others in the list.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute external_options
        #   Applicable only for enumeration type properties. Should be set to true with a
        #   'referencedObjectType' of 'OWNER'. Otherwise false.
        #
        #   @return [Boolean, nil]
        optional :external_options, HubSpotSDK::Internal::Type::Boolean, api_name: :externalOptions

        # @!attribute form_field
        #   Whether the property can appear on forms.
        #
        #   @return [Boolean, nil]
        optional :form_field, HubSpotSDK::Internal::Type::Boolean, api_name: :formField

        # @!attribute has_unique_value
        #   Whether the property is a unique identifier property.
        #
        #   @return [Boolean, nil]
        optional :has_unique_value, HubSpotSDK::Internal::Type::Boolean, api_name: :hasUniqueValue

        # @!attribute hidden
        #   Whether or not the property will be hidden from the HubSpot UI. It's recommended
        #   that this be set to false for custom properties.
        #
        #   @return [Boolean, nil]
        optional :hidden, HubSpotSDK::Internal::Type::Boolean

        # @!attribute hubspot_defined
        #   A boolean value set to true for HubSpot default properties.
        #
        #   @return [Boolean, nil]
        optional :hubspot_defined, HubSpotSDK::Internal::Type::Boolean, api_name: :hubspotDefined

        # @!attribute modification_metadata
        #
        #   @return [HubSpotSDK::Models::PropertyModificationMetadata, nil]
        optional :modification_metadata,
                 -> { HubSpotSDK::PropertyModificationMetadata },
                 api_name: :modificationMetadata

        # @!attribute referenced_object_type
        #   Deprecated. Use externalOptionsReferenceType instead.
        #
        #   @return [String, nil]
        optional :referenced_object_type, String, api_name: :referencedObjectType

        # @!attribute sensitive_data_categories
        #   When sensitiveData is true, lists the type of sensitive data contained in the
        #   property (e.g., "HIPAA").
        #
        #   @return [Array<String>, nil]
        optional :sensitive_data_categories,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :sensitiveDataCategories

        # @!attribute show_currency_symbol
        #   Whether to show the currency symbol in HubSpot's UI.
        #
        #   @return [Boolean, nil]
        optional :show_currency_symbol, HubSpotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

        # @!attribute updated_at
        #   The timestamp when the property was last updated, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_user_id
        #
        #   @return [String, nil]
        optional :updated_user_id, String, api_name: :updatedUserId

        # @!method initialize(description:, field_type:, group_name:, label:, name:, options:, type:, archived: nil, archived_at: nil, calculated: nil, calculation_formula: nil, created_at: nil, created_user_id: nil, data_sensitivity: nil, date_display_hint: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, hubspot_defined: nil, modification_metadata: nil, referenced_object_type: nil, sensitive_data_categories: nil, show_currency_symbol: nil, updated_at: nil, updated_user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Events::Property} for more details.
        #
        #   A HubSpot property
        #
        #   @param description [String] A summary of the property's purpose.
        #
        #   @param field_type [String] Determines how the property will appear in HubSpot's UI or on a form. Learn more
        #
        #   @param group_name [String] The name of the group to which the property is assigned.
        #
        #   @param label [String] The display label for the property.
        #
        #   @param name [String] The internal name for the property.
        #
        #   @param options [Array<HubSpotSDK::Models::Option>] A list of valid options for the property. This field is required for enumerated
        #
        #   @param type [String] The data type of the property, such as string or number.
        #
        #   @param archived [Boolean] Whether the property is archived.
        #
        #   @param archived_at [Time] The timestamp when the property was archived, in ISO 8601 format.
        #
        #   @param calculated [Boolean] Whether the property is a calculated field.
        #
        #   @param calculation_formula [String] The formula used for calculated properties.
        #
        #   @param created_at [Time] The timestamp when the property was created, in ISO 8601 format.
        #
        #   @param created_user_id [String] The ID of the user who created the property.
        #
        #   @param data_sensitivity [Symbol, HubSpotSDK::Models::Events::Property::DataSensitivity] Indicates the sensitivity level of the property, such as "non_sensitive", "sensi
        #
        #   @param date_display_hint [Symbol, HubSpotSDK::Models::Events::Property::DateDisplayHint]
        #
        #   @param display_order [Integer] The position of the item relative to others in the list.
        #
        #   @param external_options [Boolean] Applicable only for enumeration type properties. Should be set to true with a 'r
        #
        #   @param form_field [Boolean] Whether the property can appear on forms.
        #
        #   @param has_unique_value [Boolean] Whether the property is a unique identifier property.
        #
        #   @param hidden [Boolean] Whether or not the property will be hidden from the HubSpot UI. It's recommended
        #
        #   @param hubspot_defined [Boolean] A boolean value set to true for HubSpot default properties.
        #
        #   @param modification_metadata [HubSpotSDK::Models::PropertyModificationMetadata]
        #
        #   @param referenced_object_type [String] Deprecated. Use externalOptionsReferenceType instead.
        #
        #   @param sensitive_data_categories [Array<String>] When sensitiveData is true, lists the type of sensitive data contained in the pr
        #
        #   @param show_currency_symbol [Boolean] Whether to show the currency symbol in HubSpot's UI.
        #
        #   @param updated_at [Time] The timestamp when the property was last updated, in ISO 8601 format.
        #
        #   @param updated_user_id [String]

        # Indicates the sensitivity level of the property, such as "non_sensitive",
        # "sensitive", or "highly_sensitive".
        #
        # @see HubSpotSDK::Models::Events::Property#data_sensitivity
        module DataSensitivity
          extend HubSpotSDK::Internal::Type::Enum

          HIGHLY_SENSITIVE = :highly_sensitive
          NON_SENSITIVE = :non_sensitive
          SENSITIVE = :sensitive

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::Property#date_display_hint
        module DateDisplayHint
          extend HubSpotSDK::Internal::Type::Enum

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
end
