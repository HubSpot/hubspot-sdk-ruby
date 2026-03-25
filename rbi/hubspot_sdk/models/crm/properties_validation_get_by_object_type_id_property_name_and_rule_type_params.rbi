# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :property_name

        sig do
          returns(
            HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol
          )
        end
        attr_accessor :rule_type

        sig do
          params(
            object_type_id: String,
            property_name: String,
            rule_type:
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
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
                HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module RuleType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AFTER_DATETIME_DURATION =
            T.let(
              :AFTER_DATETIME_DURATION,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          AFTER_DURATION =
            T.let(
              :AFTER_DURATION,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          ALPHANUMERIC =
            T.let(
              :ALPHANUMERIC,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          BEFORE_DATETIME_DURATION =
            T.let(
              :BEFORE_DATETIME_DURATION,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          BEFORE_DURATION =
            T.let(
              :BEFORE_DURATION,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DAYS_OF_WEEK =
            T.let(
              :DAYS_OF_WEEK,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DECIMAL =
            T.let(
              :DECIMAL,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DOMAIN =
            T.let(
              :DOMAIN,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL_ALLOWED_DOMAINS =
            T.let(
              :EMAIL_ALLOWED_DOMAINS,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL_BLOCKED_DOMAINS =
            T.let(
              :EMAIL_BLOCKED_DOMAINS,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          END_DATE =
            T.let(
              :END_DATE,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          END_DATETIME =
            T.let(
              :END_DATETIME,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          FORMAT =
            T.let(
              :FORMAT,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MAX_LENGTH =
            T.let(
              :MAX_LENGTH,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MAX_NUMBER =
            T.let(
              :MAX_NUMBER,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MIN_LENGTH =
            T.let(
              :MIN_LENGTH,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MIN_NUMBER =
            T.let(
              :MIN_NUMBER,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE =
            T.let(
              :PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          REGEX =
            T.let(
              :REGEX,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          SPECIAL_CHARACTERS =
            T.let(
              :SPECIAL_CHARACTERS,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          START_DATE =
            T.let(
              :START_DATE,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          START_DATETIME =
            T.let(
              :START_DATETIME,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL =
            T.let(
              :URL,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL_ALLOWED_DOMAINS =
            T.let(
              :URL_ALLOWED_DOMAINS,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL_BLOCKED_DOMAINS =
            T.let(
              :URL_BLOCKED_DOMAINS,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          WHITESPACE =
            T.let(
              :WHITESPACE,
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
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
