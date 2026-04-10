# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::PropertiesValidations#get_by_object_type_id_property_name_and_rule_type
      class PublicPropertyValidationRule < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute rule_arguments
        #   A list of arguments that define the specific conditions or parameters for the
        #   validation rule.
        #
        #   @return [Array<String>]
        required :rule_arguments, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :ruleArguments

        # @!attribute rule_type
        #   The category of validation applied to the property, such as FORMAT,
        #   ALPHANUMERIC, or MAX_LENGTH.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicPropertyValidationRule::RuleType]
        required :rule_type,
                 enum: -> { HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType },
                 api_name: :ruleType

        # @!attribute should_apply_normalization
        #
        #   @return [Boolean, nil]
        optional :should_apply_normalization,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :shouldApplyNormalization

        # @!method initialize(rule_arguments:, rule_type:, should_apply_normalization: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicPropertyValidationRule} for more details.
        #
        #   @param rule_arguments [Array<String>] A list of arguments that define the specific conditions or parameters for the va
        #
        #   @param rule_type [Symbol, HubSpotSDK::Models::Crm::PublicPropertyValidationRule::RuleType] The category of validation applied to the property, such as FORMAT, ALPHANUMERIC
        #
        #   @param should_apply_normalization [Boolean]

        # The category of validation applied to the property, such as FORMAT,
        # ALPHANUMERIC, or MAX_LENGTH.
        #
        # @see HubSpotSDK::Models::Crm::PublicPropertyValidationRule#rule_type
        module RuleType
          extend HubSpotSDK::Internal::Type::Enum

          AFTER_DATETIME_DURATION = :AFTER_DATETIME_DURATION
          AFTER_DURATION = :AFTER_DURATION
          ALPHANUMERIC = :ALPHANUMERIC
          BEFORE_DATETIME_DURATION = :BEFORE_DATETIME_DURATION
          BEFORE_DURATION = :BEFORE_DURATION
          DAYS_OF_WEEK = :DAYS_OF_WEEK
          DECIMAL = :DECIMAL
          DOMAIN = :DOMAIN
          EMAIL = :EMAIL
          EMAIL_ALLOWED_DOMAINS = :EMAIL_ALLOWED_DOMAINS
          EMAIL_BLOCKED_DOMAINS = :EMAIL_BLOCKED_DOMAINS
          END_DATE = :END_DATE
          END_DATETIME = :END_DATETIME
          FORMAT = :FORMAT
          MAX_LENGTH = :MAX_LENGTH
          MAX_NUMBER = :MAX_NUMBER
          MIN_LENGTH = :MIN_LENGTH
          MIN_NUMBER = :MIN_NUMBER
          PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE = :PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE
          REGEX = :REGEX
          SPECIAL_CHARACTERS = :SPECIAL_CHARACTERS
          START_DATE = :START_DATE
          START_DATETIME = :START_DATETIME
          URL = :URL
          URL_ALLOWED_DOMAINS = :URL_ALLOWED_DOMAINS
          URL_BLOCKED_DOMAINS = :URL_BLOCKED_DOMAINS
          WHITESPACE = :WHITESPACE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
