# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class MediaBridgePropertyUpdate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute calculation_formula
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute currency_property_name
        #
        #   @return [String, nil]
        optional :currency_property_name, String, api_name: :currencyPropertyName

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute display_order
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute field_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::FieldType, nil]
        optional :field_type,
                 enum: -> { HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType },
                 api_name: :fieldType

        # @!attribute form_field
        #
        #   @return [Boolean, nil]
        optional :form_field, HubSpotSDK::Internal::Type::Boolean, api_name: :formField

        # @!attribute group_name
        #
        #   @return [String, nil]
        optional :group_name, String, api_name: :groupName

        # @!attribute has_unique_value
        #
        #   @return [Boolean, nil]
        optional :has_unique_value, HubSpotSDK::Internal::Type::Boolean, api_name: :hasUniqueValue

        # @!attribute hidden
        #
        #   @return [Boolean, nil]
        optional :hidden, HubSpotSDK::Internal::Type::Boolean

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute number_display_hint
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::NumberDisplayHint, nil]
        optional :number_display_hint,
                 enum: -> { HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint },
                 api_name: :numberDisplayHint

        # @!attribute options
        #
        #   @return [Array<HubSpotSDK::Models::OptionInput>, nil]
        optional :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::OptionInput] }

        # @!attribute show_currency_symbol
        #
        #   @return [Boolean, nil]
        optional :show_currency_symbol, HubSpotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::Type, nil]
        optional :type, enum: -> { HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type }

        # @!method initialize(calculation_formula: nil, currency_property_name: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, has_unique_value: nil, hidden: nil, label: nil, number_display_hint: nil, options: nil, show_currency_symbol: nil, type: nil)
        #   @param calculation_formula [String]
        #   @param currency_property_name [String]
        #   @param description [String]
        #   @param display_order [Integer]
        #   @param field_type [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::FieldType]
        #   @param form_field [Boolean]
        #   @param group_name [String]
        #   @param has_unique_value [Boolean]
        #   @param hidden [Boolean]
        #   @param label [String]
        #   @param number_display_hint [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::NumberDisplayHint]
        #   @param options [Array<HubSpotSDK::Models::OptionInput>]
        #   @param show_currency_symbol [Boolean]
        #   @param type [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::Type]

        # @see HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate#field_type
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

        # @see HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate#number_display_hint
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

        # @see HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate#type
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
