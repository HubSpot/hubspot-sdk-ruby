# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicInputFieldDefinition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute is_required
        #   Indicates whether the input field is mandatory.
        #
        #   @return [Boolean]
        required :is_required, HubSpotSDK::Internal::Type::Boolean, api_name: :isRequired

        # @!attribute type_definition
        #
        #   @return [HubSpotSDK::Models::Automation::PublicFieldTypeDefinition]
        required :type_definition,
                 -> { HubSpotSDK::Automation::PublicFieldTypeDefinition },
                 api_name: :typeDefinition

        # @!attribute supported_value_types
        #
        #   @return [Array<Symbol, HubSpotSDK::Models::Automation::PublicInputFieldDefinition::SupportedValueType>, nil]
        optional :supported_value_types,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Automation::PublicInputFieldDefinition::SupportedValueType]
                 },
                 api_name: :supportedValueTypes

        # @!method initialize(is_required:, type_definition:, supported_value_types: nil)
        #   @param is_required [Boolean] Indicates whether the input field is mandatory.
        #
        #   @param type_definition [HubSpotSDK::Models::Automation::PublicFieldTypeDefinition]
        #
        #   @param supported_value_types [Array<Symbol, HubSpotSDK::Models::Automation::PublicInputFieldDefinition::SupportedValueType>]

        module SupportedValueType
          extend HubSpotSDK::Internal::Type::Enum

          STATIC_VALUE = :STATIC_VALUE
          OBJECT_PROPERTY = :OBJECT_PROPERTY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
