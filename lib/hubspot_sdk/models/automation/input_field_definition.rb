# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class InputFieldDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute is_required
        #
        #   @return [Boolean]
        required :is_required, HubspotSDK::Internal::Type::Boolean, api_name: :isRequired

        # @!attribute type_definition
        #
        #   @return [HubspotSDK::Models::Automation::FieldTypeDefinition]
        required :type_definition,
                 -> {
                   HubspotSDK::Automation::FieldTypeDefinition
                 },
                 api_name: :typeDefinition

        # @!attribute automation_field_type
        #
        #   @return [String, nil]
        optional :automation_field_type, String, api_name: :automationFieldType

        # @!attribute supported_value_types
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Automation::InputFieldDefinition::SupportedValueType>, nil]
        optional :supported_value_types,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Automation::InputFieldDefinition::SupportedValueType]
                 },
                 api_name: :supportedValueTypes

        # @!method initialize(is_required:, type_definition:, automation_field_type: nil, supported_value_types: nil)
        #   @param is_required [Boolean]
        #   @param type_definition [HubspotSDK::Models::Automation::FieldTypeDefinition]
        #   @param automation_field_type [String]
        #   @param supported_value_types [Array<Symbol, HubspotSDK::Models::Automation::InputFieldDefinition::SupportedValueType>]

        module SupportedValueType
          extend HubspotSDK::Internal::Type::Enum

          STATIC_VALUE = :STATIC_VALUE
          OBJECT_PROPERTY = :OBJECT_PROPERTY
          FIELD_DATA = :FIELD_DATA
          FETCHED_OBJECT_PROPERTY = :FETCHED_OBJECT_PROPERTY
          ENROLLMENT_EVENT_PROPERTY = :ENROLLMENT_EVENT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
