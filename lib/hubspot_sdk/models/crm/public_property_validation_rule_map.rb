# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicPropertyValidationRuleMap < HubspotSDK::Internal::Type::BaseModel
        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String, api_name: :propertyName

        # @!attribute property_validation_rules
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicPropertyValidationRule>]
        required :property_validation_rules,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicPropertyValidationRule] },
                 api_name: :propertyValidationRules

        # @!method initialize(property_name:, property_validation_rules:)
        #   @param property_name [String]
        #   @param property_validation_rules [Array<HubspotSDK::Models::CRM::PublicPropertyValidationRule>]
      end
    end
  end
end
