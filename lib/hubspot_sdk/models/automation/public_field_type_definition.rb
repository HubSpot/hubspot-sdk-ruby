# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicFieldTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicOption>]
        required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicOption] }

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicFieldTypeDefinition::Type]
        required :type, enum: -> { HubspotSDK::Automation::PublicFieldTypeDefinition::Type }

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute field_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicFieldTypeDefinition::FieldType, nil]
        optional :field_type,
                 enum: -> { HubspotSDK::Automation::PublicFieldTypeDefinition::FieldType },
                 api_name: :fieldType

        # @!attribute help_text
        #
        #   @return [String, nil]
        optional :help_text, String, api_name: :helpText

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute options_url
        #
        #   @return [String, nil]
        optional :options_url, String, api_name: :optionsUrl

        # @!attribute referenced_object_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicFieldTypeDefinition::ReferencedObjectType, nil]
        optional :referenced_object_type,
                 enum: -> { HubspotSDK::Automation::PublicFieldTypeDefinition::ReferencedObjectType },
                 api_name: :referencedObjectType

        # @!method initialize(name:, options:, type:, description: nil, field_type: nil, help_text: nil, label: nil, options_url: nil, referenced_object_type: nil)
        #   @param name [String]
        #   @param options [Array<HubspotSDK::Models::Automation::PublicOption>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::PublicFieldTypeDefinition::Type]
        #   @param description [String]
        #   @param field_type [Symbol, HubspotSDK::Models::Automation::PublicFieldTypeDefinition::FieldType]
        #   @param help_text [String]
        #   @param label [String]
        #   @param options_url [String]
        #   @param referenced_object_type [Symbol, HubspotSDK::Models::Automation::PublicFieldTypeDefinition::ReferencedObjectType]

        # @see HubspotSDK::Models::Automation::PublicFieldTypeDefinition#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

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

        # @see HubspotSDK::Models::Automation::PublicFieldTypeDefinition#field_type
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

        # @see HubspotSDK::Models::Automation::PublicFieldTypeDefinition#referenced_object_type
        module ReferencedObjectType
          extend HubspotSDK::Internal::Type::Enum

          OWNER = :OWNER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
