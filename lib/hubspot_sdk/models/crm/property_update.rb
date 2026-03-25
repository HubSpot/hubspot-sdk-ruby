# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PropertyUpdate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute calculation_formula
        #   Represents a formula that is used to compute a calculated property.
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute description
        #   A description of the property that will be shown as help text in HubSpot.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute display_order
        #   Property groups are displayed in order starting with the lowest positive integer
        #   value. Values of -1 will cause the property group to be displayed after any
        #   positive values.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute field_type
        #   Controls how the property appears in HubSpot.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PropertyUpdate::FieldType, nil]
        optional :field_type, enum: -> { HubspotSDK::Crm::PropertyUpdate::FieldType }, api_name: :fieldType

        # @!attribute form_field
        #   Whether or not the property can be used in a HubSpot form.
        #
        #   @return [Boolean, nil]
        optional :form_field, HubspotSDK::Internal::Type::Boolean, api_name: :formField

        # @!attribute group_name
        #   The name of the property group the property belongs to.
        #
        #   @return [String, nil]
        optional :group_name, String, api_name: :groupName

        # @!attribute hidden
        #   If true, the property won't be visible and can't be used in HubSpot.
        #
        #   @return [Boolean, nil]
        optional :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute label
        #   A human-readable label that will be shown in HubSpot.
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute options
        #   A list of valid options for the property. This field is required for enumerated
        #   properties.
        #
        #   @return [Array<HubspotSDK::Models::OptionInput>, nil]
        optional :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::OptionInput] }

        # @!attribute type
        #   The data type of the property.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PropertyUpdate::Type, nil]
        optional :type, enum: -> { HubspotSDK::Crm::PropertyUpdate::Type }

        # @!method initialize(calculation_formula: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, hidden: nil, label: nil, options: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PropertyUpdate} for more details.
        #
        #   @param calculation_formula [String] Represents a formula that is used to compute a calculated property.
        #
        #   @param description [String] A description of the property that will be shown as help text in HubSpot.
        #
        #   @param display_order [Integer] Property groups are displayed in order starting with the lowest positive integer
        #
        #   @param field_type [Symbol, HubspotSDK::Models::Crm::PropertyUpdate::FieldType] Controls how the property appears in HubSpot.
        #
        #   @param form_field [Boolean] Whether or not the property can be used in a HubSpot form.
        #
        #   @param group_name [String] The name of the property group the property belongs to.
        #
        #   @param hidden [Boolean] If true, the property won't be visible and can't be used in HubSpot.
        #
        #   @param label [String] A human-readable label that will be shown in HubSpot.
        #
        #   @param options [Array<HubspotSDK::Models::OptionInput>] A list of valid options for the property. This field is required for enumerated
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PropertyUpdate::Type] The data type of the property.

        # Controls how the property appears in HubSpot.
        #
        # @see HubspotSDK::Models::Crm::PropertyUpdate#field_type
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
        # @see HubspotSDK::Models::Crm::PropertyUpdate#type
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
      end
    end
  end
end
