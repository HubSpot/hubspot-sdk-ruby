# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::PropertyValidations#crm_v3_property_validations_object_type_id_property_name_rule_type_rule_type
      class PropertyValidationCrmV3PropertyValidationsObjectTypeIDPropertyNameRuleTypeRuleTypeParams < HubspotSDK::Models::Crm::PublicPropertyValidationRuleUpdate
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String

        # @!method initialize(object_type_id:, property_name:, request_options: {})
        #   @param object_type_id [String]
        #   @param property_name [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

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
