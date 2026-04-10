# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicPropertyValidationRule < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicPropertyValidationRule,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A list of arguments that define the specific conditions or parameters for the
        # validation rule.
        sig { returns(T::Array[String]) }
        attr_accessor :rule_arguments

        # The category of validation applied to the property, such as FORMAT,
        # ALPHANUMERIC, or MAX_LENGTH.
        sig do
          returns(
            HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
          )
        end
        attr_accessor :rule_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :should_apply_normalization

        sig { params(should_apply_normalization: T::Boolean).void }
        attr_writer :should_apply_normalization

        sig do
          params(
            rule_arguments: T::Array[String],
            rule_type:
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::OrSymbol,
            should_apply_normalization: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of arguments that define the specific conditions or parameters for the
          # validation rule.
          rule_arguments:,
          # The category of validation applied to the property, such as FORMAT,
          # ALPHANUMERIC, or MAX_LENGTH.
          rule_type:,
          should_apply_normalization: nil
        )
        end

        sig do
          override.returns(
            {
              rule_arguments: T::Array[String],
              rule_type:
                HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol,
              should_apply_normalization: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The category of validation applied to the property, such as FORMAT,
        # ALPHANUMERIC, or MAX_LENGTH.
        module RuleType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AFTER_DATETIME_DURATION =
            T.let(
              :AFTER_DATETIME_DURATION,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          AFTER_DURATION =
            T.let(
              :AFTER_DURATION,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          ALPHANUMERIC =
            T.let(
              :ALPHANUMERIC,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          BEFORE_DATETIME_DURATION =
            T.let(
              :BEFORE_DATETIME_DURATION,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          BEFORE_DURATION =
            T.let(
              :BEFORE_DURATION,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          DAYS_OF_WEEK =
            T.let(
              :DAYS_OF_WEEK,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          DECIMAL =
            T.let(
              :DECIMAL,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          DOMAIN =
            T.let(
              :DOMAIN,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          EMAIL_ALLOWED_DOMAINS =
            T.let(
              :EMAIL_ALLOWED_DOMAINS,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          EMAIL_BLOCKED_DOMAINS =
            T.let(
              :EMAIL_BLOCKED_DOMAINS,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          END_DATE =
            T.let(
              :END_DATE,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          END_DATETIME =
            T.let(
              :END_DATETIME,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          FORMAT =
            T.let(
              :FORMAT,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          MAX_LENGTH =
            T.let(
              :MAX_LENGTH,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          MAX_NUMBER =
            T.let(
              :MAX_NUMBER,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          MIN_LENGTH =
            T.let(
              :MIN_LENGTH,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          MIN_NUMBER =
            T.let(
              :MIN_NUMBER,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE =
            T.let(
              :PHONE_NUMBER_WITH_EXPLICIT_COUNTRY_CODE,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          REGEX =
            T.let(
              :REGEX,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          SPECIAL_CHARACTERS =
            T.let(
              :SPECIAL_CHARACTERS,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          START_DATE =
            T.let(
              :START_DATE,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          START_DATETIME =
            T.let(
              :START_DATETIME,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          URL =
            T.let(
              :URL,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          URL_ALLOWED_DOMAINS =
            T.let(
              :URL_ALLOWED_DOMAINS,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          URL_BLOCKED_DOMAINS =
            T.let(
              :URL_BLOCKED_DOMAINS,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )
          WHITESPACE =
            T.let(
              :WHITESPACE,
              HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType::TaggedSymbol
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
