# typed: strong

module HubspotSDK
  module Models
    module Cms
      class PropertyDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::PropertyDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        # A HubSpot property
        sig { returns(HubspotSDK::Property) }
        attr_reader :property

        sig { params(property: HubspotSDK::Property::OrHash).void }
        attr_writer :property

        sig do
          returns(
            T.nilable(
              HubspotSDK::Cms::PropertyDefinition::CalculationExpression::Variants
            )
          )
        end
        attr_reader :calculation_expression

        sig do
          params(
            calculation_expression:
              T.any(
                HubspotSDK::Cms::ConstantBoolean::OrHash,
                HubspotSDK::Cms::ConstantNumber::OrHash,
                HubspotSDK::Cms::ConstantString::OrHash,
                HubspotSDK::Cms::BooleanPropertyVariable::OrHash,
                HubspotSDK::Cms::StringPropertyVariable::OrHash,
                HubspotSDK::Cms::NumberPropertyVariable::OrHash,
                HubspotSDK::Cms::TimestampOfPropertyVariable::OrHash,
                HubspotSDK::Cms::BooleanTargetPropertyVariable::OrHash,
                HubspotSDK::Cms::StringTargetPropertyVariable::OrHash,
                HubspotSDK::Cms::NumberTargetPropertyVariable::OrHash,
                HubspotSDK::Cms::TimestampOfTargetPropertyVariable::OrHash,
                HubspotSDK::Cms::AddNumbers::OrHash,
                HubspotSDK::Cms::SubtractNumbers::OrHash,
                HubspotSDK::Cms::MultiplyNumbers::OrHash,
                HubspotSDK::Cms::DivideNumbers::OrHash,
                HubspotSDK::Cms::RoundDownNumbers::OrHash,
                HubspotSDK::Cms::RoundUpNumbers::OrHash,
                HubspotSDK::Cms::RoundNearestNumbers::OrHash,
                HubspotSDK::Cms::UpperCase::OrHash,
                HubspotSDK::Cms::LowerCase::OrHash,
                HubspotSDK::Cms::ConcatStrings::OrHash,
                HubspotSDK::Cms::Contains::OrHash,
                HubspotSDK::Cms::BeginsWith::OrHash,
                HubspotSDK::Cms::NumberToString::OrHash,
                HubspotSDK::Cms::ParseNumber::OrHash,
                HubspotSDK::Cms::FetchExchangeRate::OrHash,
                HubspotSDK::Cms::FetchCurrencyDecimalPlaces::OrHash,
                HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
                HubspotSDK::Cms::DatedExchangeRate::OrHash,
                HubspotSDK::Cms::PipelineProbability::OrHash,
                HubspotSDK::Cms::MaxNumbers::OrHash,
                HubspotSDK::Cms::MinNumbers::OrHash,
                HubspotSDK::Cms::LessThan::OrHash,
                HubspotSDK::Cms::LessThanOrEqual::OrHash,
                HubspotSDK::Cms::MoreThan::OrHash,
                HubspotSDK::Cms::MoreThanOrEqual::OrHash,
                HubspotSDK::Cms::NumberEquals::OrHash,
                HubspotSDK::Cms::StringEquals::OrHash,
                HubspotSDK::Cms::IsPipelineStageClosed::OrHash,
                HubspotSDK::Cms::Not::OrHash,
                HubspotSDK::Cms::Date::OrHash,
                HubspotSDK::Cms::Month::OrHash,
                HubspotSDK::Cms::Year::OrHash,
                HubspotSDK::Cms::Now::OrHash,
                HubspotSDK::Cms::TimeBetween::OrHash,
                HubspotSDK::Cms::TimeBetweenSkipWeekends::OrHash,
                HubspotSDK::Cms::PeriodToMonths::OrHash,
                HubspotSDK::Cms::PeriodToWeeks::OrHash,
                HubspotSDK::Cms::And::OrHash,
                HubspotSDK::Cms::Or::OrHash,
                HubspotSDK::Cms::Xor::OrHash,
                HubspotSDK::Cms::IfString::OrHash,
                HubspotSDK::Cms::IfNumber::OrHash,
                HubspotSDK::Cms::IfBoolean::OrHash,
                HubspotSDK::Cms::IsPresent::OrHash,
                HubspotSDK::Cms::HasEmailReply::OrHash,
                HubspotSDK::Cms::HasPlainTextEmailReply::OrHash,
                HubspotSDK::Cms::ExtractMostRecentEmailReplyHTML::OrHash,
                HubspotSDK::Cms::ExtractMostRecentEmailReplyText::OrHash,
                HubspotSDK::Cms::ExtractMostRecentPlainTextEmailReply::OrHash,
                HubspotSDK::Cms::SetContainsString::OrHash,
                HubspotSDK::Cms::IsEngagementType::OrHash,
                HubspotSDK::Cms::FormatFullName::OrHash,
                HubspotSDK::Cms::FormatPhoneNumber::OrHash,
                HubspotSDK::Cms::FormatSearchablePhoneNumber::OrHash,
                HubspotSDK::Cms::AbsoluteValue::OrHash,
                HubspotSDK::Cms::SquareRoot::OrHash,
                HubspotSDK::Cms::Power::OrHash,
                HubspotSDK::Cms::Substring::OrHash,
                HubspotSDK::Cms::Euler::OrHash,
                HubspotSDK::Cms::StringLength::OrHash,
                HubspotSDK::Cms::AddTime::OrHash,
                HubspotSDK::Cms::SubtractTime::OrHash
              )
          ).void
        end
        attr_writer :calculation_expression

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig { returns(T.nilable(HubspotSDK::Cms::PropertyDefinitionSource)) }
        attr_reader :definition_source

        sig do
          params(
            definition_source: HubspotSDK::Cms::PropertyDefinitionSource::OrHash
          ).void
        end
        attr_writer :definition_source

        sig { returns(T.nilable(HubspotSDK::Cms::ExtensionData)) }
        attr_reader :extension_data

        sig do
          params(extension_data: HubspotSDK::Cms::ExtensionData::OrHash).void
        end
        attr_writer :extension_data

        sig { returns(T.nilable(HubspotSDK::Cms::ExternalOptionsMetaData)) }
        attr_reader :external_options_meta_data

        sig do
          params(
            external_options_meta_data:
              HubspotSDK::Cms::ExternalOptionsMetaData::OrHash
          ).void
        end
        attr_writer :external_options_meta_data

        sig { returns(T.nilable(Integer)) }
        attr_reader :fulcrum_portal_id

        sig { params(fulcrum_portal_id: Integer).void }
        attr_writer :fulcrum_portal_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :fulcrum_timestamp

        sig { params(fulcrum_timestamp: Integer).void }
        attr_writer :fulcrum_timestamp

        sig { returns(T.nilable(String)) }
        attr_reader :janus_group

        sig { params(janus_group: String).void }
        attr_writer :janus_group

        sig { returns(T.nilable(HubspotSDK::Cms::FieldLevelPermission)) }
        attr_reader :permission

        sig do
          params(permission: HubspotSDK::Cms::FieldLevelPermission::OrHash).void
        end
        attr_writer :permission

        sig { returns(T.nilable(HubspotSDK::Cms::DefinitionSource)) }
        attr_reader :property_definition_source

        sig do
          params(
            property_definition_source:
              HubspotSDK::Cms::DefinitionSource::OrHash
          ).void
        end
        attr_writer :property_definition_source

        sig { returns(T.nilable(HubspotSDK::Cms::DefaultRequirements)) }
        attr_reader :property_requirements

        sig do
          params(
            property_requirements: HubspotSDK::Cms::DefaultRequirements::OrHash
          ).void
        end
        attr_writer :property_requirements

        sig { returns(T.nilable(HubspotSDK::Cms::RollupExpression)) }
        attr_reader :rollup_expression

        sig do
          params(
            rollup_expression: HubspotSDK::Cms::RollupExpression::OrHash
          ).void
        end
        attr_writer :rollup_expression

        sig do
          params(
            object_type_id: String,
            property: HubspotSDK::Property::OrHash,
            calculation_expression:
              T.any(
                HubspotSDK::Cms::ConstantBoolean::OrHash,
                HubspotSDK::Cms::ConstantNumber::OrHash,
                HubspotSDK::Cms::ConstantString::OrHash,
                HubspotSDK::Cms::BooleanPropertyVariable::OrHash,
                HubspotSDK::Cms::StringPropertyVariable::OrHash,
                HubspotSDK::Cms::NumberPropertyVariable::OrHash,
                HubspotSDK::Cms::TimestampOfPropertyVariable::OrHash,
                HubspotSDK::Cms::BooleanTargetPropertyVariable::OrHash,
                HubspotSDK::Cms::StringTargetPropertyVariable::OrHash,
                HubspotSDK::Cms::NumberTargetPropertyVariable::OrHash,
                HubspotSDK::Cms::TimestampOfTargetPropertyVariable::OrHash,
                HubspotSDK::Cms::AddNumbers::OrHash,
                HubspotSDK::Cms::SubtractNumbers::OrHash,
                HubspotSDK::Cms::MultiplyNumbers::OrHash,
                HubspotSDK::Cms::DivideNumbers::OrHash,
                HubspotSDK::Cms::RoundDownNumbers::OrHash,
                HubspotSDK::Cms::RoundUpNumbers::OrHash,
                HubspotSDK::Cms::RoundNearestNumbers::OrHash,
                HubspotSDK::Cms::UpperCase::OrHash,
                HubspotSDK::Cms::LowerCase::OrHash,
                HubspotSDK::Cms::ConcatStrings::OrHash,
                HubspotSDK::Cms::Contains::OrHash,
                HubspotSDK::Cms::BeginsWith::OrHash,
                HubspotSDK::Cms::NumberToString::OrHash,
                HubspotSDK::Cms::ParseNumber::OrHash,
                HubspotSDK::Cms::FetchExchangeRate::OrHash,
                HubspotSDK::Cms::FetchCurrencyDecimalPlaces::OrHash,
                HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
                HubspotSDK::Cms::DatedExchangeRate::OrHash,
                HubspotSDK::Cms::PipelineProbability::OrHash,
                HubspotSDK::Cms::MaxNumbers::OrHash,
                HubspotSDK::Cms::MinNumbers::OrHash,
                HubspotSDK::Cms::LessThan::OrHash,
                HubspotSDK::Cms::LessThanOrEqual::OrHash,
                HubspotSDK::Cms::MoreThan::OrHash,
                HubspotSDK::Cms::MoreThanOrEqual::OrHash,
                HubspotSDK::Cms::NumberEquals::OrHash,
                HubspotSDK::Cms::StringEquals::OrHash,
                HubspotSDK::Cms::IsPipelineStageClosed::OrHash,
                HubspotSDK::Cms::Not::OrHash,
                HubspotSDK::Cms::Date::OrHash,
                HubspotSDK::Cms::Month::OrHash,
                HubspotSDK::Cms::Year::OrHash,
                HubspotSDK::Cms::Now::OrHash,
                HubspotSDK::Cms::TimeBetween::OrHash,
                HubspotSDK::Cms::TimeBetweenSkipWeekends::OrHash,
                HubspotSDK::Cms::PeriodToMonths::OrHash,
                HubspotSDK::Cms::PeriodToWeeks::OrHash,
                HubspotSDK::Cms::And::OrHash,
                HubspotSDK::Cms::Or::OrHash,
                HubspotSDK::Cms::Xor::OrHash,
                HubspotSDK::Cms::IfString::OrHash,
                HubspotSDK::Cms::IfNumber::OrHash,
                HubspotSDK::Cms::IfBoolean::OrHash,
                HubspotSDK::Cms::IsPresent::OrHash,
                HubspotSDK::Cms::HasEmailReply::OrHash,
                HubspotSDK::Cms::HasPlainTextEmailReply::OrHash,
                HubspotSDK::Cms::ExtractMostRecentEmailReplyHTML::OrHash,
                HubspotSDK::Cms::ExtractMostRecentEmailReplyText::OrHash,
                HubspotSDK::Cms::ExtractMostRecentPlainTextEmailReply::OrHash,
                HubspotSDK::Cms::SetContainsString::OrHash,
                HubspotSDK::Cms::IsEngagementType::OrHash,
                HubspotSDK::Cms::FormatFullName::OrHash,
                HubspotSDK::Cms::FormatPhoneNumber::OrHash,
                HubspotSDK::Cms::FormatSearchablePhoneNumber::OrHash,
                HubspotSDK::Cms::AbsoluteValue::OrHash,
                HubspotSDK::Cms::SquareRoot::OrHash,
                HubspotSDK::Cms::Power::OrHash,
                HubspotSDK::Cms::Substring::OrHash,
                HubspotSDK::Cms::Euler::OrHash,
                HubspotSDK::Cms::StringLength::OrHash,
                HubspotSDK::Cms::AddTime::OrHash,
                HubspotSDK::Cms::SubtractTime::OrHash
              ),
            calculation_formula: String,
            definition_source:
              HubspotSDK::Cms::PropertyDefinitionSource::OrHash,
            extension_data: HubspotSDK::Cms::ExtensionData::OrHash,
            external_options_meta_data:
              HubspotSDK::Cms::ExternalOptionsMetaData::OrHash,
            fulcrum_portal_id: Integer,
            fulcrum_timestamp: Integer,
            janus_group: String,
            permission: HubspotSDK::Cms::FieldLevelPermission::OrHash,
            property_definition_source:
              HubspotSDK::Cms::DefinitionSource::OrHash,
            property_requirements: HubspotSDK::Cms::DefaultRequirements::OrHash,
            rollup_expression: HubspotSDK::Cms::RollupExpression::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type_id:,
          # A HubSpot property
          property:,
          calculation_expression: nil,
          calculation_formula: nil,
          definition_source: nil,
          extension_data: nil,
          external_options_meta_data: nil,
          fulcrum_portal_id: nil,
          fulcrum_timestamp: nil,
          janus_group: nil,
          permission: nil,
          property_definition_source: nil,
          property_requirements: nil,
          rollup_expression: nil
        )
        end

        sig do
          override.returns(
            {
              object_type_id: String,
              property: HubspotSDK::Property,
              calculation_expression:
                HubspotSDK::Cms::PropertyDefinition::CalculationExpression::Variants,
              calculation_formula: String,
              definition_source: HubspotSDK::Cms::PropertyDefinitionSource,
              extension_data: HubspotSDK::Cms::ExtensionData,
              external_options_meta_data:
                HubspotSDK::Cms::ExternalOptionsMetaData,
              fulcrum_portal_id: Integer,
              fulcrum_timestamp: Integer,
              janus_group: String,
              permission: HubspotSDK::Cms::FieldLevelPermission,
              property_definition_source: HubspotSDK::Cms::DefinitionSource,
              property_requirements: HubspotSDK::Cms::DefaultRequirements,
              rollup_expression: HubspotSDK::Cms::RollupExpression
            }
          )
        end
        def to_hash
        end

        module CalculationExpression
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::ConstantBoolean,
                HubspotSDK::Cms::ConstantNumber,
                HubspotSDK::Cms::ConstantString,
                HubspotSDK::Cms::BooleanPropertyVariable,
                HubspotSDK::Cms::StringPropertyVariable,
                HubspotSDK::Cms::NumberPropertyVariable,
                HubspotSDK::Cms::TimestampOfPropertyVariable,
                HubspotSDK::Cms::BooleanTargetPropertyVariable,
                HubspotSDK::Cms::StringTargetPropertyVariable,
                HubspotSDK::Cms::NumberTargetPropertyVariable,
                HubspotSDK::Cms::TimestampOfTargetPropertyVariable,
                HubspotSDK::Cms::AddNumbers,
                HubspotSDK::Cms::SubtractNumbers,
                HubspotSDK::Cms::MultiplyNumbers,
                HubspotSDK::Cms::DivideNumbers,
                HubspotSDK::Cms::RoundDownNumbers,
                HubspotSDK::Cms::RoundUpNumbers,
                HubspotSDK::Cms::RoundNearestNumbers,
                HubspotSDK::Cms::UpperCase,
                HubspotSDK::Cms::LowerCase,
                HubspotSDK::Cms::ConcatStrings,
                HubspotSDK::Cms::Contains,
                HubspotSDK::Cms::BeginsWith,
                HubspotSDK::Cms::NumberToString,
                HubspotSDK::Cms::ParseNumber,
                HubspotSDK::Cms::FetchExchangeRate,
                HubspotSDK::Cms::FetchCurrencyDecimalPlaces,
                HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency,
                HubspotSDK::Cms::DatedExchangeRate,
                HubspotSDK::Cms::PipelineProbability,
                HubspotSDK::Cms::MaxNumbers,
                HubspotSDK::Cms::MinNumbers,
                HubspotSDK::Cms::LessThan,
                HubspotSDK::Cms::LessThanOrEqual,
                HubspotSDK::Cms::MoreThan,
                HubspotSDK::Cms::MoreThanOrEqual,
                HubspotSDK::Cms::NumberEquals,
                HubspotSDK::Cms::StringEquals,
                HubspotSDK::Cms::IsPipelineStageClosed,
                HubspotSDK::Cms::Not,
                HubspotSDK::Cms::Date,
                HubspotSDK::Cms::Month,
                HubspotSDK::Cms::Year,
                HubspotSDK::Cms::Now,
                HubspotSDK::Cms::TimeBetween,
                HubspotSDK::Cms::TimeBetweenSkipWeekends,
                HubspotSDK::Cms::PeriodToMonths,
                HubspotSDK::Cms::PeriodToWeeks,
                HubspotSDK::Cms::And,
                HubspotSDK::Cms::Or,
                HubspotSDK::Cms::Xor,
                HubspotSDK::Cms::IfString,
                HubspotSDK::Cms::IfNumber,
                HubspotSDK::Cms::IfBoolean,
                HubspotSDK::Cms::IsPresent,
                HubspotSDK::Cms::HasEmailReply,
                HubspotSDK::Cms::HasPlainTextEmailReply,
                HubspotSDK::Cms::ExtractMostRecentEmailReplyHTML,
                HubspotSDK::Cms::ExtractMostRecentEmailReplyText,
                HubspotSDK::Cms::ExtractMostRecentPlainTextEmailReply,
                HubspotSDK::Cms::SetContainsString,
                HubspotSDK::Cms::IsEngagementType,
                HubspotSDK::Cms::FormatFullName,
                HubspotSDK::Cms::FormatPhoneNumber,
                HubspotSDK::Cms::FormatSearchablePhoneNumber,
                HubspotSDK::Cms::AbsoluteValue,
                HubspotSDK::Cms::SquareRoot,
                HubspotSDK::Cms::Power,
                HubspotSDK::Cms::Substring,
                HubspotSDK::Cms::Euler,
                HubspotSDK::Cms::StringLength,
                HubspotSDK::Cms::AddTime,
                HubspotSDK::Cms::SubtractTime
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::PropertyDefinition::CalculationExpression::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
