# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :property_name

        sig do
          returns(
            HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol
          )
        end
        attr_accessor :rule_type

        sig do
          params(
            object_type_id: String,
            property_name: String,
            rule_type:
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type_id:,
          property_name:,
          rule_type:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              object_type_id: String,
              property_name: String,
              rule_type:
                HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module RuleType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AFTER_DATETIME_DURATION =
            T.let(
              :AFTER_DATETIME_DURATION,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          AFTER_DURATION =
            T.let(
              :AFTER_DURATION,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          ALPHANUMERIC =
            T.let(
              :ALPHANUMERIC,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          BEFORE_DATETIME_DURATION =
            T.let(
              :BEFORE_DATETIME_DURATION,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          BEFORE_DURATION =
            T.let(
              :BEFORE_DURATION,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DAYS_OF_WEEK =
            T.let(
              :DAYS_OF_WEEK,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DECIMAL =
            T.let(
              :DECIMAL,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DOMAIN =
            T.let(
              :DOMAIN,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL_ALLOWED_DOMAINS =
            T.let(
              :EMAIL_ALLOWED_DOMAINS,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL_BLOCKED_DOMAINS =
            T.let(
              :EMAIL_BLOCKED_DOMAINS,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          END_DATE =
            T.let(
              :END_DATE,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          END_DATETIME =
            T.let(
              :END_DATETIME,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          FORMAT =
            T.let(
              :FORMAT,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MAX_LENGTH =
            T.let(
              :MAX_LENGTH,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MAX_NUMBER =
            T.let(
              :MAX_NUMBER,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MIN_LENGTH =
            T.let(
              :MIN_LENGTH,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MIN_NUMBER =
            T.let(
              :MIN_NUMBER,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE =
            T.let(
              :PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          REGEX =
            T.let(
              :REGEX,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          SPECIAL_CHARACTERS =
            T.let(
              :SPECIAL_CHARACTERS,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          START_DATE =
            T.let(
              :START_DATE,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          START_DATETIME =
            T.let(
              :START_DATETIME,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL =
            T.let(
              :URL,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL_ALLOWED_DOMAINS =
            T.let(
              :URL_ALLOWED_DOMAINS,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL_BLOCKED_DOMAINS =
            T.let(
              :URL_BLOCKED_DOMAINS,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          WHITESPACE =
            T.let(
              :WHITESPACE,
              HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
