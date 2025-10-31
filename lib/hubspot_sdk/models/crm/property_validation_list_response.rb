# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::PropertyValidations#list
      class PropertyValidationListResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::PropertyValidationListResponse::Result>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::PropertyValidationListResponse::Result] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::PropertyValidationListResponse::Result>]

        class Result < HubspotSDK::Internal::Type::BaseModel
          # @!attribute property_name
          #
          #   @return [String]
          required :property_name, String, api_name: :propertyName

          # @!attribute property_validation_rules
          #
          #   @return [Array<HubspotSDK::Models::CRM::PropertyValidationListResponse::Result::PropertyValidationRule>]
          required :property_validation_rules,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::PropertyValidationListResponse::Result::PropertyValidationRule] },
                   api_name: :propertyValidationRules

          # @!method initialize(property_name:, property_validation_rules:)
          #   @param property_name [String]
          #   @param property_validation_rules [Array<HubspotSDK::Models::CRM::PropertyValidationListResponse::Result::PropertyValidationRule>]

          class PropertyValidationRule < HubspotSDK::Internal::Type::BaseModel
            # @!attribute rule_arguments
            #
            #   @return [Array<String>]
            required :rule_arguments, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :ruleArguments

            # @!attribute rule_type
            #
            #   @return [String]
            required :rule_type, String, api_name: :ruleType

            # @!method initialize(rule_arguments:, rule_type:)
            #   @param rule_arguments [Array<String>]
            #   @param rule_type [String]
          end
        end
      end
    end
  end
end
