# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicInputFieldDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute is_required
        #   Indicates whether the input field is mandatory.
        #
        #   @return [Boolean]
        required :is_required, HubspotSDK::Internal::Type::Boolean, api_name: :isRequired

        # @!attribute type_definition
        #
        #   @return [HubspotSDK::Models::Automation::PublicFieldTypeDefinition]
        required :type_definition,
                 -> { HubspotSDK::Automation::PublicFieldTypeDefinition },
                 api_name: :typeDefinition

        # @!attribute supported_value_types
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Automation::PublicInputFieldDefinition::SupportedValueType>, nil]
        optional :supported_value_types,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Automation::PublicInputFieldDefinition::SupportedValueType]
                 },
                 api_name: :supportedValueTypes

        # @!method initialize(is_required:, type_definition:, supported_value_types: nil)
        #   @param is_required [Boolean] Indicates whether the input field is mandatory.
        #
        #   @param type_definition [HubspotSDK::Models::Automation::PublicFieldTypeDefinition]
        #
        #   @param supported_value_types [Array<Symbol, HubspotSDK::Models::Automation::PublicInputFieldDefinition::SupportedValueType>]

        module SupportedValueType
          extend HubspotSDK::Internal::Type::Enum

          STATIC_VALUE = :STATIC_VALUE
          OBJECT_PROPERTY = :OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
