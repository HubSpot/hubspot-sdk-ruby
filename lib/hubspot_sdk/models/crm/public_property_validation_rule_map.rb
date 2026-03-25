# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyValidationRuleMap < HubspotSDK::Internal::Type::BaseModel
        # @!attribute property_name
        #   The name of the property for which validation rules are defined.
        #
        #   @return [String]
        required :property_name, String, api_name: :propertyName

        # @!attribute property_validation_rules
        #   A list of validation rules applicable to the property.
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRule>]
        required :property_validation_rules,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicPropertyValidationRule] },
                 api_name: :propertyValidationRules

        # @!method initialize(property_name:, property_validation_rules:)
        #   @param property_name [String] The name of the property for which validation rules are defined.
        #
        #   @param property_validation_rules [Array<HubspotSDK::Models::Crm::PublicPropertyValidationRule>] A list of validation rules applicable to the property.
      end
    end
  end
end
