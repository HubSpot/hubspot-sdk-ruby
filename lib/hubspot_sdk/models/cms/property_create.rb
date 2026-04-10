# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class PropertyCreate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute field_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::PropertyCreate::FieldType]
        required :field_type, enum: -> { HubSpotSDK::Cms::PropertyCreate::FieldType }, api_name: :fieldType

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
        #   @return [Symbol, HubSpotSDK::Models::Cms::PropertyCreate::Type]
        required :type, enum: -> { HubSpotSDK::Cms::PropertyCreate::Type }

        # @!attribute calculation_formula
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute data_sensitivity
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::PropertyCreate::DataSensitivity, nil]
        optional :data_sensitivity,
                 enum: -> { HubSpotSDK::Cms::PropertyCreate::DataSensitivity },
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

        # @!attribute options
        #
        #   @return [Array<HubSpotSDK::Models::OptionInput>, nil]
        optional :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::OptionInput] }

        # @!attribute referenced_object_type
        #
        #   @return [String, nil]
        optional :referenced_object_type, String, api_name: :referencedObjectType

        # @!method initialize(field_type:, group_name:, label:, name:, type:, calculation_formula: nil, data_sensitivity: nil, description: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, options: nil, referenced_object_type: nil)
        #   @param field_type [Symbol, HubSpotSDK::Models::Cms::PropertyCreate::FieldType]
        #   @param group_name [String]
        #   @param label [String]
        #   @param name [String]
        #   @param type [Symbol, HubSpotSDK::Models::Cms::PropertyCreate::Type]
        #   @param calculation_formula [String]
        #   @param data_sensitivity [Symbol, HubSpotSDK::Models::Cms::PropertyCreate::DataSensitivity]
        #   @param description [String]
        #   @param display_order [Integer]
        #   @param external_options [Boolean]
        #   @param form_field [Boolean]
        #   @param has_unique_value [Boolean]
        #   @param hidden [Boolean]
        #   @param options [Array<HubSpotSDK::Models::OptionInput>]
        #   @param referenced_object_type [String]

        # @see HubSpotSDK::Models::Cms::PropertyCreate#field_type
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

        # @see HubSpotSDK::Models::Cms::PropertyCreate#type
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

        # @see HubSpotSDK::Models::Cms::PropertyCreate#data_sensitivity
        module DataSensitivity
          extend HubSpotSDK::Internal::Type::Enum

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
