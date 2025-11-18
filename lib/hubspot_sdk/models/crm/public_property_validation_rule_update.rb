# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyValidationRuleUpdate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute rule_arguments
        #   A list of arguments that define the constraints for the validation rule.
        #
        #   @return [Array<String>]
        required :rule_arguments, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :ruleArguments

        # @!method initialize(rule_arguments:)
        #   @param rule_arguments [Array<String>] A list of arguments that define the constraints for the validation rule.
      end
    end
  end
end
