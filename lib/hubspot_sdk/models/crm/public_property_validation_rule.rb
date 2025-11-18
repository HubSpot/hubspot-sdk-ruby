# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyValidationRule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute rule_arguments
        #   A list of arguments that define the specific conditions or parameters for the
        #   validation rule.
        #
        #   @return [Array<String>]
        required :rule_arguments, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :ruleArguments

        # @!attribute rule_type
        #   The category of validation applied to the property, such as FORMAT,
        #   ALPHANUMERIC, or MAX_LENGTH.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicPropertyValidationRule::RuleType]
        required :rule_type,
                 enum: -> { HubspotSDK::Crm::PublicPropertyValidationRule::RuleType },
                 api_name: :ruleType

        # @!method initialize(rule_arguments:, rule_type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicPropertyValidationRule} for more details.
        #
        #   @param rule_arguments [Array<String>] A list of arguments that define the specific conditions or parameters for the va
        #
        #   @param rule_type [Symbol, HubspotSDK::Models::Crm::PublicPropertyValidationRule::RuleType] The category of validation applied to the property, such as FORMAT, ALPHANUMERIC

        # The category of validation applied to the property, such as FORMAT,
        # ALPHANUMERIC, or MAX_LENGTH.
        #
        # @see HubspotSDK::Models::Crm::PublicPropertyValidationRule#rule_type
        module RuleType
          extend HubspotSDK::Internal::Type::Enum

          FORMAT = :FORMAT
          ALPHANUMERIC = :ALPHANUMERIC
          MAX_LENGTH = :MAX_LENGTH
          MIN_LENGTH = :MIN_LENGTH
          MIN_NUMBER = :MIN_NUMBER
          MAX_NUMBER = :MAX_NUMBER
          START_DATE = :START_DATE
          END_DATE = :END_DATE
          SPECIAL_CHARACTERS = :SPECIAL_CHARACTERS
          WHITESPACE = :WHITESPACE
          DECIMAL = :DECIMAL
          BEFORE_DURATION = :BEFORE_DURATION
          AFTER_DURATION = :AFTER_DURATION
          DAYS_OF_WEEK = :DAYS_OF_WEEK
          REGEX = :REGEX
          START_DATETIME = :START_DATETIME
          END_DATETIME = :END_DATETIME
          BEFORE_DATETIME_DURATION = :BEFORE_DATETIME_DURATION
          AFTER_DATETIME_DURATION = :AFTER_DATETIME_DURATION
          PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE = :PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE
          URL = :URL
          URL_ALLOWED_DOMAINS = :URL_ALLOWED_DOMAINS
          URL_BLOCKED_DOMAINS = :URL_BLOCKED_DOMAINS
          EMAIL = :EMAIL
          EMAIL_ALLOWED_DOMAINS = :EMAIL_ALLOWED_DOMAINS
          EMAIL_BLOCKED_DOMAINS = :EMAIL_BLOCKED_DOMAINS
          DOMAIN = :DOMAIN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
