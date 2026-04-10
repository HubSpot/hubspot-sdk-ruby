# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams < HubSpotSDK::Models::Crm::PublicPropertyValidationRuleUpdate
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :property_name

        sig do
          returns(
            HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol
          )
        end
        attr_accessor :rule_type

        sig do
          params(
            object_type_id: String,
            property_name: String,
            rule_type:
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol,
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
                HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol,
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
                HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AFTER_DATETIME_DURATION =
            T.let(
              :AFTER_DATETIME_DURATION,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          AFTER_DURATION =
            T.let(
              :AFTER_DURATION,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          ALPHANUMERIC =
            T.let(
              :ALPHANUMERIC,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          BEFORE_DATETIME_DURATION =
            T.let(
              :BEFORE_DATETIME_DURATION,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          BEFORE_DURATION =
            T.let(
              :BEFORE_DURATION,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DAYS_OF_WEEK =
            T.let(
              :DAYS_OF_WEEK,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DECIMAL =
            T.let(
              :DECIMAL,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          DOMAIN =
            T.let(
              :DOMAIN,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL_ALLOWED_DOMAINS =
            T.let(
              :EMAIL_ALLOWED_DOMAINS,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          EMAIL_BLOCKED_DOMAINS =
            T.let(
              :EMAIL_BLOCKED_DOMAINS,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          END_DATE =
            T.let(
              :END_DATE,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          END_DATETIME =
            T.let(
              :END_DATETIME,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          FORMAT =
            T.let(
              :FORMAT,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MAX_LENGTH =
            T.let(
              :MAX_LENGTH,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MAX_NUMBER =
            T.let(
              :MAX_NUMBER,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MIN_LENGTH =
            T.let(
              :MIN_LENGTH,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          MIN_NUMBER =
            T.let(
              :MIN_NUMBER,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE =
            T.let(
              :PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          REGEX =
            T.let(
              :REGEX,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          SPECIAL_CHARACTERS =
            T.let(
              :SPECIAL_CHARACTERS,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          START_DATE =
            T.let(
              :START_DATE,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          START_DATETIME =
            T.let(
              :START_DATETIME,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL =
            T.let(
              :URL,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL_ALLOWED_DOMAINS =
            T.let(
              :URL_ALLOWED_DOMAINS,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          URL_BLOCKED_DOMAINS =
            T.let(
              :URL_BLOCKED_DOMAINS,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )
          WHITESPACE =
            T.let(
              :WHITESPACE,
              HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::TaggedSymbol
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
