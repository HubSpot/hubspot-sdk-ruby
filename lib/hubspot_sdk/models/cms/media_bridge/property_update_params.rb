# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::Properties#update
        class PropertyUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [String]
          required :app_id, String

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!attribute calculation_formula
          #
          #   @return [String, nil]
          optional :calculation_formula, String, api_name: :calculationFormula

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
          #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::PropertyUpdateParams::FieldType, nil]
          optional :field_type,
                   enum: -> { HubspotSDK::Cms::MediaBridge::PropertyUpdateParams::FieldType },
                   api_name: :fieldType

          # @!attribute form_field
          #
          #   @return [Boolean, nil]
          optional :form_field, HubspotSDK::Internal::Type::Boolean, api_name: :formField

          # @!attribute group_name
          #
          #   @return [String, nil]
          optional :group_name, String, api_name: :groupName

          # @!attribute has_unique_value
          #
          #   @return [Boolean, nil]
          optional :has_unique_value, HubspotSDK::Internal::Type::Boolean, api_name: :hasUniqueValue

          # @!attribute hidden
          #
          #   @return [Boolean, nil]
          optional :hidden, HubspotSDK::Internal::Type::Boolean

          # @!attribute label
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute options
          #
          #   @return [Array<HubspotSDK::Models::OptionInput>, nil]
          optional :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::OptionInput] }

          # @!attribute type
          #
          #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::PropertyUpdateParams::Type, nil]
          optional :type, enum: -> { HubspotSDK::Cms::MediaBridge::PropertyUpdateParams::Type }

          # @!method initialize(app_id:, object_type:, calculation_formula: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, has_unique_value: nil, hidden: nil, label: nil, options: nil, type: nil, request_options: {})
          #   @param app_id [String]
          #   @param object_type [String]
          #   @param calculation_formula [String]
          #   @param description [String]
          #   @param display_order [Integer]
          #   @param field_type [Symbol, HubspotSDK::Models::Cms::MediaBridge::PropertyUpdateParams::FieldType]
          #   @param form_field [Boolean]
          #   @param group_name [String]
          #   @param has_unique_value [Boolean]
          #   @param hidden [Boolean]
          #   @param label [String]
          #   @param options [Array<HubspotSDK::Models::OptionInput>]
          #   @param type [Symbol, HubspotSDK::Models::Cms::MediaBridge::PropertyUpdateParams::Type]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

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
end
