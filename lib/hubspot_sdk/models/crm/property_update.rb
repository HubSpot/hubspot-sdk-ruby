# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PropertyUpdate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute calculation_formula
        #   Represents a formula that is used to compute a calculated property.
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute currency_property_name
        #
        #   @return [String, nil]
        optional :currency_property_name, String, api_name: :currencyPropertyName

        # @!attribute description
        #   A description of the property that will be shown as help text in HubSpot.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute display_order
        #   Properties are displayed in order starting with the lowest positive integer
        #   value. Values of -1 will cause the Property to be displayed after any positive
        #   values.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute field_type
        #   Controls how the property appears in HubSpot.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PropertyUpdate::FieldType, nil]
        optional :field_type, enum: -> { HubSpotSDK::Crm::PropertyUpdate::FieldType }, api_name: :fieldType

        # @!attribute form_field
        #   Whether or not the property can be used in a HubSpot form.
        #
        #   @return [Boolean, nil]
        optional :form_field, HubSpotSDK::Internal::Type::Boolean, api_name: :formField

        # @!attribute group_name
        #   The name of the property group the property belongs to.
        #
        #   @return [String, nil]
        optional :group_name, String, api_name: :groupName

        # @!attribute hidden
        #   If true, the property won't be visible and can't be used in HubSpot.
        #
        #   @return [Boolean, nil]
        optional :hidden, HubSpotSDK::Internal::Type::Boolean

        # @!attribute label
        #   A human-readable property label that will be shown in HubSpot.
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute options
        #   A list of valid options for the property.
        #
        #   @return [Array<HubSpotSDK::Models::OptionInput>, nil]
        optional :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::OptionInput] }

        # @!attribute show_currency_symbol
        #
        #   @return [Boolean, nil]
        optional :show_currency_symbol, HubSpotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

        # @!attribute type
        #   The data type of the property.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PropertyUpdate::Type, nil]
        optional :type, enum: -> { HubSpotSDK::Crm::PropertyUpdate::Type }

        # @!method initialize(calculation_formula: nil, currency_property_name: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, hidden: nil, label: nil, options: nil, show_currency_symbol: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PropertyUpdate} for more details.
        #
        #   @param calculation_formula [String] Represents a formula that is used to compute a calculated property.
        #
        #   @param currency_property_name [String]
        #
        #   @param description [String] A description of the property that will be shown as help text in HubSpot.
        #
        #   @param display_order [Integer] Properties are displayed in order starting with the lowest positive integer valu
        #
        #   @param field_type [Symbol, HubSpotSDK::Models::Crm::PropertyUpdate::FieldType] Controls how the property appears in HubSpot.
        #
        #   @param form_field [Boolean] Whether or not the property can be used in a HubSpot form.
        #
        #   @param group_name [String] The name of the property group the property belongs to.
        #
        #   @param hidden [Boolean] If true, the property won't be visible and can't be used in HubSpot.
        #
        #   @param label [String] A human-readable property label that will be shown in HubSpot.
        #
        #   @param options [Array<HubSpotSDK::Models::OptionInput>] A list of valid options for the property.
        #
        #   @param show_currency_symbol [Boolean]
        #
        #   @param type [Symbol, HubSpotSDK::Models::Crm::PropertyUpdate::Type] The data type of the property.

        # Controls how the property appears in HubSpot.
        #
        # @see HubSpotSDK::Models::Crm::PropertyUpdate#field_type
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

        # The data type of the property.
        #
        # @see HubSpotSDK::Models::Crm::PropertyUpdate#type
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
      end
    end
  end
end
