# frozen_string_literal: true

module HubSpotSDK
  module Models
    class PropertyCreate < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute field_type
      #
      #   @return [Symbol, HubSpotSDK::Models::PropertyCreate::FieldType]
      required :field_type, enum: -> { HubSpotSDK::PropertyCreate::FieldType }, api_name: :fieldType

      # @!attribute group_name
      #
      #   @return [String]
      required :group_name, String, api_name: :groupName

      # @!attribute label
      #
      #   @return [String]
      required :label, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #
      #   @return [Symbol, HubSpotSDK::Models::PropertyCreate::Type]
      required :type, enum: -> { HubSpotSDK::PropertyCreate::Type }

      # @!attribute calculation_formula
      #
      #   @return [String, nil]
      optional :calculation_formula, String, api_name: :calculationFormula

      # @!attribute currency_property_name
      #
      #   @return [String, nil]
      optional :currency_property_name, String, api_name: :currencyPropertyName

      # @!attribute data_sensitivity
      #
      #   @return [Symbol, HubSpotSDK::Models::PropertyCreate::DataSensitivity, nil]
      optional :data_sensitivity,
               enum: -> { HubSpotSDK::PropertyCreate::DataSensitivity },
               api_name: :dataSensitivity

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute display_order
      #
      #   @return [Integer, nil]
      optional :display_order, Integer, api_name: :displayOrder

      # @!attribute external_options
      #
      #   @return [Boolean, nil]
      optional :external_options, HubSpotSDK::Internal::Type::Boolean, api_name: :externalOptions

      # @!attribute form_field
      #
      #   @return [Boolean, nil]
      optional :form_field, HubSpotSDK::Internal::Type::Boolean, api_name: :formField

      # @!attribute has_unique_value
      #
      #   @return [Boolean, nil]
      optional :has_unique_value, HubSpotSDK::Internal::Type::Boolean, api_name: :hasUniqueValue

      # @!attribute hidden
      #
      #   @return [Boolean, nil]
      optional :hidden, HubSpotSDK::Internal::Type::Boolean

      # @!attribute number_display_hint
      #
      #   @return [Symbol, HubSpotSDK::Models::PropertyCreate::NumberDisplayHint, nil]
      optional :number_display_hint,
               enum: -> { HubSpotSDK::PropertyCreate::NumberDisplayHint },
               api_name: :numberDisplayHint

      # @!attribute options
      #
      #   @return [Array<HubSpotSDK::Models::OptionInput>, nil]
      optional :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::OptionInput] }

      # @!attribute referenced_object_type
      #
      #   @return [String, nil]
      optional :referenced_object_type, String, api_name: :referencedObjectType

      # @!attribute show_currency_symbol
      #
      #   @return [Boolean, nil]
      optional :show_currency_symbol, HubSpotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

      # @!method initialize(field_type:, group_name:, label:, name:, type:, calculation_formula: nil, currency_property_name: nil, data_sensitivity: nil, description: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, number_display_hint: nil, options: nil, referenced_object_type: nil, show_currency_symbol: nil)
      #   @param field_type [Symbol, HubSpotSDK::Models::PropertyCreate::FieldType]
      #   @param group_name [String]
      #   @param label [String]
      #   @param name [String]
      #   @param type [Symbol, HubSpotSDK::Models::PropertyCreate::Type]
      #   @param calculation_formula [String]
      #   @param currency_property_name [String]
      #   @param data_sensitivity [Symbol, HubSpotSDK::Models::PropertyCreate::DataSensitivity]
      #   @param description [String]
      #   @param display_order [Integer]
      #   @param external_options [Boolean]
      #   @param form_field [Boolean]
      #   @param has_unique_value [Boolean]
      #   @param hidden [Boolean]
      #   @param number_display_hint [Symbol, HubSpotSDK::Models::PropertyCreate::NumberDisplayHint]
      #   @param options [Array<HubSpotSDK::Models::OptionInput>]
      #   @param referenced_object_type [String]
      #   @param show_currency_symbol [Boolean]

      # @see HubSpotSDK::Models::PropertyCreate#field_type
      module FieldType
        extend HubSpotSDK::Internal::Type::Enum

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

      # @see HubSpotSDK::Models::PropertyCreate#type
      module Type
        extend HubSpotSDK::Internal::Type::Enum

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

      # @see HubSpotSDK::Models::PropertyCreate#data_sensitivity
      module DataSensitivity
        extend HubSpotSDK::Internal::Type::Enum

        HIGHLY_SENSITIVE = :highly_sensitive
        NON_SENSITIVE = :non_sensitive
        SENSITIVE = :sensitive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubSpotSDK::Models::PropertyCreate#number_display_hint
      module NumberDisplayHint
        extend HubSpotSDK::Internal::Type::Enum

        CURRENCY = :currency
        DURATION = :duration
        FORMATTED = :formatted
        PERCENTAGE = :percentage
        PROBABILITY = :probability
        UNFORMATTED = :unformatted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
