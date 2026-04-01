# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PropertyCreate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute field_type
        #   Controls how the property appears in HubSpot.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PropertyCreate::FieldType]
        required :field_type, enum: -> { HubspotSDK::Crm::PropertyCreate::FieldType }, api_name: :fieldType

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

        # @!attribute type
        #   The data type of the property.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PropertyCreate::Type]
        required :type, enum: -> { HubspotSDK::Crm::PropertyCreate::Type }

        # @!attribute calculation_formula
        #   Represents a formula that is used to compute a calculated property.
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute currency_property_name
        #
        #   @return [String, nil]
        optional :currency_property_name, String, api_name: :currencyPropertyName

        # @!attribute data_sensitivity
        #   Indicates the sensitivity level of the property, with options: highly_sensitive,
        #   non_sensitive, or sensitive.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PropertyCreate::DataSensitivity, nil]
        optional :data_sensitivity,
                 enum: -> { HubspotSDK::Crm::PropertyCreate::DataSensitivity },
                 api_name: :dataSensitivity

        # @!attribute description
        #   A description of the property that will be shown as help text in HubSpot.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute display_order
        #   Properties are displayed in order starting with the lowest positive integer
        #   value. Values of -1 will cause the property to be displayed after any positive
        #   values.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute external_options
        #   Applicable only for 'enumeration' type properties. Should be set to true in
        #   conjunction with a 'referencedObjectType' of 'OWNER'. Otherwise false.
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
        #   If true, the property won't be visible and can't be used in HubSpot.
        #
        #   @return [Boolean, nil]
        optional :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute options
        #   A list of valid options for the property. This field is required for enumerated
        #   properties.
        #
        #   @return [Array<HubspotSDK::Models::OptionInput>, nil]
        optional :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::OptionInput] }

        # @!attribute referenced_object_type
        #   Should be set to 'OWNER' when 'externalOptions' is true, which causes the
        #   property to dynamically pull option values from the current HubSpot users.
        #
        #   @return [String, nil]
        optional :referenced_object_type, String, api_name: :referencedObjectType

        # @!attribute show_currency_symbol
        #
        #   @return [Boolean, nil]
        optional :show_currency_symbol, HubspotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

        # @!method initialize(field_type:, group_name:, label:, name:, type:, calculation_formula: nil, currency_property_name: nil, data_sensitivity: nil, description: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, options: nil, referenced_object_type: nil, show_currency_symbol: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PropertyCreate} for more details.
        #
        #   @param field_type [Symbol, HubspotSDK::Models::Crm::PropertyCreate::FieldType] Controls how the property appears in HubSpot.
        #
        #   @param group_name [String] The name of the property group the property belongs to.
        #
        #   @param label [String] A human-readable property label that will be shown in HubSpot.
        #
        #   @param name [String] The internal property name, which must be used when referencing the property via
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PropertyCreate::Type] The data type of the property.
        #
        #   @param calculation_formula [String] Represents a formula that is used to compute a calculated property.
        #
        #   @param currency_property_name [String]
        #
        #   @param data_sensitivity [Symbol, HubspotSDK::Models::Crm::PropertyCreate::DataSensitivity] Indicates the sensitivity level of the property, with options: highly_sensitive,
        #
        #   @param description [String] A description of the property that will be shown as help text in HubSpot.
        #
        #   @param display_order [Integer] Properties are displayed in order starting with the lowest positive integer valu
        #
        #   @param external_options [Boolean] Applicable only for 'enumeration' type properties. Should be set to true in con
        #
        #   @param form_field [Boolean] Whether or not the property can be used in a HubSpot form.
        #
        #   @param has_unique_value [Boolean] Whether or not the property's value must be unique. Once set, this can't be chan
        #
        #   @param hidden [Boolean] If true, the property won't be visible and can't be used in HubSpot.
        #
        #   @param options [Array<HubspotSDK::Models::OptionInput>] A list of valid options for the property. This field is required for enumerated
        #
        #   @param referenced_object_type [String] Should be set to 'OWNER' when 'externalOptions' is true, which causes the proper
        #
        #   @param show_currency_symbol [Boolean]

        # Controls how the property appears in HubSpot.
        #
        # @see HubspotSDK::Models::Crm::PropertyCreate#field_type
        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          BOOLEANCHECKBOX = :booleancheckbox
          CALCULATION_EQUATION = :calculation_equation
          CHECKBOX = :checkbox
          DATE = :date
          FILE = :file
          HTML = :html
          NUMBER = :number
          PHONENUMBER = :phonenumber
          RADIO = :radio
          SELECT = :select
          TEXT = :text
          TEXTAREA = :textarea

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The data type of the property.
        #
        # @see HubspotSDK::Models::Crm::PropertyCreate#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          BOOL = :bool
          DATE = :date
          DATETIME = :datetime
          ENUMERATION = :enumeration
          NUMBER = :number
          PHONE_NUMBER = :phone_number
          STRING = :string

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates the sensitivity level of the property, with options: highly_sensitive,
        # non_sensitive, or sensitive.
        #
        # @see HubspotSDK::Models::Crm::PropertyCreate#data_sensitivity
        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          HIGHLY_SENSITIVE = :highly_sensitive
          NON_SENSITIVE = :non_sensitive
          SENSITIVE = :sensitive

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
