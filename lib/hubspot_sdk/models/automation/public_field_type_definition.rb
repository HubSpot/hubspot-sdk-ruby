# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicFieldTypeDefinition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute name
        #   The internal name used to identify the field.
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicOption>]
        required :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicOption] }

        # @!attribute type
        #   The data type of the field, with accepted values including bool, date, datetime,
        #   enumeration, json, number, object_coordinates, phone_number, and string.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::PublicFieldTypeDefinition::Type]
        required :type, enum: -> { HubSpotSDK::Automation::PublicFieldTypeDefinition::Type }

        # @!attribute description
        #   A detailed explanation of the field's purpose.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute field_type
        #   The type of field, with accepted values including booleancheckbox,
        #   calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
        #   select, text, and textarea.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::PublicFieldTypeDefinition::FieldType, nil]
        optional :field_type,
                 enum: -> { HubSpotSDK::Automation::PublicFieldTypeDefinition::FieldType },
                 api_name: :fieldType

        # @!attribute help_text
        #   Additional information or guidance about the field.
        #
        #   @return [String, nil]
        optional :help_text, String, api_name: :helpText

        # @!attribute label
        #   A user-friendly name for the field.
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute options_url
        #   A URL that provides options for the field.
        #
        #   @return [String, nil]
        optional :options_url, String, api_name: :optionsUrl

        # @!attribute referenced_object_type
        #   The type of object that the field references, with accepted values including
        #   OWNER.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::PublicFieldTypeDefinition::ReferencedObjectType, nil]
        optional :referenced_object_type,
                 enum: -> { HubSpotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType },
                 api_name: :referencedObjectType

        # @!method initialize(name:, options:, type:, description: nil, field_type: nil, help_text: nil, label: nil, options_url: nil, referenced_object_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::PublicFieldTypeDefinition} for more details.
        #
        #   @param name [String] The internal name used to identify the field.
        #
        #   @param options [Array<HubSpotSDK::Models::Automation::PublicOption>]
        #
        #   @param type [Symbol, HubSpotSDK::Models::Automation::PublicFieldTypeDefinition::Type] The data type of the field, with accepted values including bool, date, datetime,
        #
        #   @param description [String] A detailed explanation of the field's purpose.
        #
        #   @param field_type [Symbol, HubSpotSDK::Models::Automation::PublicFieldTypeDefinition::FieldType] The type of field, with accepted values including booleancheckbox, calculation_e
        #
        #   @param help_text [String] Additional information or guidance about the field.
        #
        #   @param label [String] A user-friendly name for the field.
        #
        #   @param options_url [String] A URL that provides options for the field.
        #
        #   @param referenced_object_type [Symbol, HubSpotSDK::Models::Automation::PublicFieldTypeDefinition::ReferencedObjectType] The type of object that the field references, with accepted values including OWN

        # The data type of the field, with accepted values including bool, date, datetime,
        # enumeration, json, number, object_coordinates, phone_number, and string.
        #
        # @see HubSpotSDK::Models::Automation::PublicFieldTypeDefinition#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          BOOL = :bool
          DATE = :date
          DATETIME = :datetime
          ENUMERATION = :enumeration
          JSON = :json
          NUMBER = :number
          OBJECT_COORDINATES = :object_coordinates
          PHONE_NUMBER = :phone_number
          STRING = :string

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of field, with accepted values including booleancheckbox,
        # calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
        # select, text, and textarea.
        #
        # @see HubSpotSDK::Models::Automation::PublicFieldTypeDefinition#field_type
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

        # The type of object that the field references, with accepted values including
        # OWNER.
        #
        # @see HubSpotSDK::Models::Automation::PublicFieldTypeDefinition#referenced_object_type
        module ReferencedObjectType
          extend HubSpotSDK::Internal::Type::Enum

          OWNER = :OWNER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
