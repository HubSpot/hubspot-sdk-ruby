# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::PropertiesValidations#get_by_object_type_id_property_name_and_rule_type
      class PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String

        # @!attribute rule_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType]
        required :rule_type,
                 enum: -> { HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType }

        # @!method initialize(object_type_id:, property_name:, rule_type:, request_options: {})
        #   @param object_type_id [String]
        #   @param property_name [String]
        #   @param rule_type [Symbol, HubSpotSDK::Models::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

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
