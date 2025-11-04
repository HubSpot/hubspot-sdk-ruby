# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyValidationRuleUpdate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute rule_arguments
        #
        #   @return [Array<String>]
        required :rule_arguments, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :ruleArguments

        # @!method initialize(rule_arguments:)
        #   @param rule_arguments [Array<String>]
      end
    end
  end
end
