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

        # @!attribute should_apply_normalization
        #
        #   @return [Boolean, nil]
        optional :should_apply_normalization,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :shouldApplyNormalization

        # @!method initialize(rule_arguments:, should_apply_normalization: nil)
        #   @param rule_arguments [Array<String>] A list of arguments that define the constraints for the validation rule.
        #
        #   @param should_apply_normalization [Boolean]
      end
    end
  end
end
