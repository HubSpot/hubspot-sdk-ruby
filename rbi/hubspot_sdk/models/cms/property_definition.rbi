# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class PropertyDefinition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::PropertyDefinition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        # A HubSpot property
        sig { returns(HubSpotSDK::Cms::Property) }
        attr_reader :property

        sig { params(property: HubSpotSDK::Cms::Property::OrHash).void }
        attr_writer :property

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::PropertyDefinition::CalculationExpression::Variants
            )
          )
        end
        attr_reader :calculation_expression

        sig do
          params(
            calculation_expression:
              T.any(
                HubSpotSDK::Cms::ConstantBoolean::OrHash,
                HubSpotSDK::Cms::ConstantNumber::OrHash,
                HubSpotSDK::Cms::ConstantString::OrHash,
                HubSpotSDK::Cms::BooleanPropertyVariable::OrHash,
                HubSpotSDK::Cms::StringPropertyVariable::OrHash,
                HubSpotSDK::Cms::NumberPropertyVariable::OrHash,
                HubSpotSDK::Cms::TimestampOfPropertyVariable::OrHash,
                HubSpotSDK::Cms::BooleanTargetPropertyVariable::OrHash,
                HubSpotSDK::Cms::StringTargetPropertyVariable::OrHash,
                HubSpotSDK::Cms::NumberTargetPropertyVariable::OrHash,
                HubSpotSDK::Cms::TimestampOfTargetPropertyVariable::OrHash,
                HubSpotSDK::Cms::AddNumbers::OrHash,
                HubSpotSDK::Cms::SubtractNumbers::OrHash,
                HubSpotSDK::Cms::MultiplyNumbers::OrHash,
                HubSpotSDK::Cms::DivideNumbers::OrHash,
                HubSpotSDK::Cms::RoundDownNumbers::OrHash,
                HubSpotSDK::Cms::RoundUpNumbers::OrHash,
                HubSpotSDK::Cms::RoundNearestNumbers::OrHash,
                HubSpotSDK::Cms::UpperCase::OrHash,
                HubSpotSDK::Cms::LowerCase::OrHash,
                HubSpotSDK::Cms::ConcatStrings::OrHash,
                HubSpotSDK::Cms::Contains::OrHash,
                HubSpotSDK::Cms::BeginsWith::OrHash,
                HubSpotSDK::Cms::NumberToString::OrHash,
                HubSpotSDK::Cms::ParseNumber::OrHash,
                HubSpotSDK::Cms::FetchExchangeRate::OrHash,
                HubSpotSDK::Cms::FetchCurrencyDecimalPlaces::OrHash,
                HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
                HubSpotSDK::Cms::DatedExchangeRate::OrHash,
                HubSpotSDK::Cms::PipelineProbability::OrHash,
                HubSpotSDK::Cms::MaxNumbers::OrHash,
                HubSpotSDK::Cms::MinNumbers::OrHash,
                HubSpotSDK::Cms::LessThan::OrHash,
                HubSpotSDK::Cms::LessThanOrEqual::OrHash,
                HubSpotSDK::Cms::MoreThan::OrHash,
                HubSpotSDK::Cms::MoreThanOrEqual::OrHash,
                HubSpotSDK::Cms::NumberEquals::OrHash,
                HubSpotSDK::Cms::StringEquals::OrHash,
                HubSpotSDK::Cms::IsPipelineStageClosed::OrHash,
                HubSpotSDK::Cms::Not::OrHash,
                HubSpotSDK::Cms::Date::OrHash,
                HubSpotSDK::Cms::Month::OrHash,
                HubSpotSDK::Cms::Year::OrHash,
                HubSpotSDK::Cms::Now::OrHash,
                HubSpotSDK::Cms::TimeBetween::OrHash,
                HubSpotSDK::Cms::TimeBetweenSkipWeekends::OrHash,
                HubSpotSDK::Cms::PeriodToMonths::OrHash,
                HubSpotSDK::Cms::PeriodToWeeks::OrHash,
                HubSpotSDK::Cms::And::OrHash,
                HubSpotSDK::Cms::Or::OrHash,
                HubSpotSDK::Cms::Xor::OrHash,
                HubSpotSDK::Cms::IfString::OrHash,
                HubSpotSDK::Cms::IfNumber::OrHash,
                HubSpotSDK::Cms::IfBoolean::OrHash,
                HubSpotSDK::Cms::IsPresent::OrHash,
                HubSpotSDK::Cms::HasEmailReply::OrHash,
                HubSpotSDK::Cms::HasPlainTextEmailReply::OrHash,
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML::OrHash,
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyText::OrHash,
                HubSpotSDK::Cms::ExtractMostRecentPlainTextEmailReply::OrHash,
                HubSpotSDK::Cms::SetContainsString::OrHash,
                HubSpotSDK::Cms::IsEngagementType::OrHash,
                HubSpotSDK::Cms::FormatFullName::OrHash,
                HubSpotSDK::Cms::FormatPhoneNumber::OrHash,
                HubSpotSDK::Cms::FormatSearchablePhoneNumber::OrHash,
                HubSpotSDK::Cms::AbsoluteValue::OrHash,
                HubSpotSDK::Cms::SquareRoot::OrHash,
                HubSpotSDK::Cms::Power::OrHash,
                HubSpotSDK::Cms::Substring::OrHash,
                HubSpotSDK::Cms::Euler::OrHash,
                HubSpotSDK::Cms::StringLength::OrHash,
                HubSpotSDK::Cms::AddTime::OrHash,
                HubSpotSDK::Cms::SubtractTime::OrHash
              )
          ).void
        end
        attr_writer :calculation_expression

        sig { returns(T.nilable(String)) }
        attr_reader :calculation_formula

        sig { params(calculation_formula: String).void }
        attr_writer :calculation_formula

        sig { returns(T.nilable(HubSpotSDK::Cms::PropertyDefinitionSource)) }
        attr_reader :definition_source

        sig do
          params(
            definition_source: HubSpotSDK::Cms::PropertyDefinitionSource::OrHash
          ).void
        end
        attr_writer :definition_source

        sig { returns(T.nilable(HubSpotSDK::Cms::ExtensionData)) }
        attr_reader :extension_data

        sig do
          params(extension_data: HubSpotSDK::Cms::ExtensionData::OrHash).void
        end
        attr_writer :extension_data

        sig { returns(T.nilable(HubSpotSDK::Cms::ExternalOptionsMetaData)) }
        attr_reader :external_options_meta_data

        sig do
          params(
            external_options_meta_data:
              HubSpotSDK::Cms::ExternalOptionsMetaData::OrHash
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

        sig { returns(T.nilable(HubSpotSDK::Cms::FieldLevelPermission)) }
        attr_reader :permission

        sig do
          params(permission: HubSpotSDK::Cms::FieldLevelPermission::OrHash).void
        end
        attr_writer :permission

        sig { returns(T.nilable(HubSpotSDK::Cms::DefinitionSource)) }
        attr_reader :property_definition_source

        sig do
          params(
            property_definition_source:
              HubSpotSDK::Cms::DefinitionSource::OrHash
          ).void
        end
        attr_writer :property_definition_source

        sig { returns(T.nilable(HubSpotSDK::Cms::DefaultRequirements)) }
        attr_reader :property_requirements

        sig do
          params(
            property_requirements: HubSpotSDK::Cms::DefaultRequirements::OrHash
          ).void
        end
        attr_writer :property_requirements

        sig { returns(T.nilable(HubSpotSDK::Cms::RollupExpression)) }
        attr_reader :rollup_expression

        sig do
          params(
            rollup_expression: HubSpotSDK::Cms::RollupExpression::OrHash
          ).void
        end
        attr_writer :rollup_expression

        sig do
          params(
            object_type_id: String,
            property: HubSpotSDK::Cms::Property::OrHash,
            calculation_expression:
              T.any(
                HubSpotSDK::Cms::ConstantBoolean::OrHash,
                HubSpotSDK::Cms::ConstantNumber::OrHash,
                HubSpotSDK::Cms::ConstantString::OrHash,
                HubSpotSDK::Cms::BooleanPropertyVariable::OrHash,
                HubSpotSDK::Cms::StringPropertyVariable::OrHash,
                HubSpotSDK::Cms::NumberPropertyVariable::OrHash,
                HubSpotSDK::Cms::TimestampOfPropertyVariable::OrHash,
                HubSpotSDK::Cms::BooleanTargetPropertyVariable::OrHash,
                HubSpotSDK::Cms::StringTargetPropertyVariable::OrHash,
                HubSpotSDK::Cms::NumberTargetPropertyVariable::OrHash,
                HubSpotSDK::Cms::TimestampOfTargetPropertyVariable::OrHash,
                HubSpotSDK::Cms::AddNumbers::OrHash,
                HubSpotSDK::Cms::SubtractNumbers::OrHash,
                HubSpotSDK::Cms::MultiplyNumbers::OrHash,
                HubSpotSDK::Cms::DivideNumbers::OrHash,
                HubSpotSDK::Cms::RoundDownNumbers::OrHash,
                HubSpotSDK::Cms::RoundUpNumbers::OrHash,
                HubSpotSDK::Cms::RoundNearestNumbers::OrHash,
                HubSpotSDK::Cms::UpperCase::OrHash,
                HubSpotSDK::Cms::LowerCase::OrHash,
                HubSpotSDK::Cms::ConcatStrings::OrHash,
                HubSpotSDK::Cms::Contains::OrHash,
                HubSpotSDK::Cms::BeginsWith::OrHash,
                HubSpotSDK::Cms::NumberToString::OrHash,
                HubSpotSDK::Cms::ParseNumber::OrHash,
                HubSpotSDK::Cms::FetchExchangeRate::OrHash,
                HubSpotSDK::Cms::FetchCurrencyDecimalPlaces::OrHash,
                HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
                HubSpotSDK::Cms::DatedExchangeRate::OrHash,
                HubSpotSDK::Cms::PipelineProbability::OrHash,
                HubSpotSDK::Cms::MaxNumbers::OrHash,
                HubSpotSDK::Cms::MinNumbers::OrHash,
                HubSpotSDK::Cms::LessThan::OrHash,
                HubSpotSDK::Cms::LessThanOrEqual::OrHash,
                HubSpotSDK::Cms::MoreThan::OrHash,
                HubSpotSDK::Cms::MoreThanOrEqual::OrHash,
                HubSpotSDK::Cms::NumberEquals::OrHash,
                HubSpotSDK::Cms::StringEquals::OrHash,
                HubSpotSDK::Cms::IsPipelineStageClosed::OrHash,
                HubSpotSDK::Cms::Not::OrHash,
                HubSpotSDK::Cms::Date::OrHash,
                HubSpotSDK::Cms::Month::OrHash,
                HubSpotSDK::Cms::Year::OrHash,
                HubSpotSDK::Cms::Now::OrHash,
                HubSpotSDK::Cms::TimeBetween::OrHash,
                HubSpotSDK::Cms::TimeBetweenSkipWeekends::OrHash,
                HubSpotSDK::Cms::PeriodToMonths::OrHash,
                HubSpotSDK::Cms::PeriodToWeeks::OrHash,
                HubSpotSDK::Cms::And::OrHash,
                HubSpotSDK::Cms::Or::OrHash,
                HubSpotSDK::Cms::Xor::OrHash,
                HubSpotSDK::Cms::IfString::OrHash,
                HubSpotSDK::Cms::IfNumber::OrHash,
                HubSpotSDK::Cms::IfBoolean::OrHash,
                HubSpotSDK::Cms::IsPresent::OrHash,
                HubSpotSDK::Cms::HasEmailReply::OrHash,
                HubSpotSDK::Cms::HasPlainTextEmailReply::OrHash,
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML::OrHash,
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyText::OrHash,
                HubSpotSDK::Cms::ExtractMostRecentPlainTextEmailReply::OrHash,
                HubSpotSDK::Cms::SetContainsString::OrHash,
                HubSpotSDK::Cms::IsEngagementType::OrHash,
                HubSpotSDK::Cms::FormatFullName::OrHash,
                HubSpotSDK::Cms::FormatPhoneNumber::OrHash,
                HubSpotSDK::Cms::FormatSearchablePhoneNumber::OrHash,
                HubSpotSDK::Cms::AbsoluteValue::OrHash,
                HubSpotSDK::Cms::SquareRoot::OrHash,
                HubSpotSDK::Cms::Power::OrHash,
                HubSpotSDK::Cms::Substring::OrHash,
                HubSpotSDK::Cms::Euler::OrHash,
                HubSpotSDK::Cms::StringLength::OrHash,
                HubSpotSDK::Cms::AddTime::OrHash,
                HubSpotSDK::Cms::SubtractTime::OrHash
              ),
            calculation_formula: String,
            definition_source:
              HubSpotSDK::Cms::PropertyDefinitionSource::OrHash,
            extension_data: HubSpotSDK::Cms::ExtensionData::OrHash,
            external_options_meta_data:
              HubSpotSDK::Cms::ExternalOptionsMetaData::OrHash,
            fulcrum_portal_id: Integer,
            fulcrum_timestamp: Integer,
            janus_group: String,
            permission: HubSpotSDK::Cms::FieldLevelPermission::OrHash,
            property_definition_source:
              HubSpotSDK::Cms::DefinitionSource::OrHash,
            property_requirements: HubSpotSDK::Cms::DefaultRequirements::OrHash,
            rollup_expression: HubSpotSDK::Cms::RollupExpression::OrHash
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
              property: HubSpotSDK::Cms::Property,
              calculation_expression:
                HubSpotSDK::Cms::PropertyDefinition::CalculationExpression::Variants,
              calculation_formula: String,
              definition_source: HubSpotSDK::Cms::PropertyDefinitionSource,
              extension_data: HubSpotSDK::Cms::ExtensionData,
              external_options_meta_data:
                HubSpotSDK::Cms::ExternalOptionsMetaData,
              fulcrum_portal_id: Integer,
              fulcrum_timestamp: Integer,
              janus_group: String,
              permission: HubSpotSDK::Cms::FieldLevelPermission,
              property_definition_source: HubSpotSDK::Cms::DefinitionSource,
              property_requirements: HubSpotSDK::Cms::DefaultRequirements,
              rollup_expression: HubSpotSDK::Cms::RollupExpression
            }
          )
        end
        def to_hash
        end

        module CalculationExpression
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::ConstantBoolean,
                HubSpotSDK::Cms::ConstantNumber,
                HubSpotSDK::Cms::ConstantString,
                HubSpotSDK::Cms::BooleanPropertyVariable,
                HubSpotSDK::Cms::StringPropertyVariable,
                HubSpotSDK::Cms::NumberPropertyVariable,
                HubSpotSDK::Cms::TimestampOfPropertyVariable,
                HubSpotSDK::Cms::BooleanTargetPropertyVariable,
                HubSpotSDK::Cms::StringTargetPropertyVariable,
                HubSpotSDK::Cms::NumberTargetPropertyVariable,
                HubSpotSDK::Cms::TimestampOfTargetPropertyVariable,
                HubSpotSDK::Cms::AddNumbers,
                HubSpotSDK::Cms::SubtractNumbers,
                HubSpotSDK::Cms::MultiplyNumbers,
                HubSpotSDK::Cms::DivideNumbers,
                HubSpotSDK::Cms::RoundDownNumbers,
                HubSpotSDK::Cms::RoundUpNumbers,
                HubSpotSDK::Cms::RoundNearestNumbers,
                HubSpotSDK::Cms::UpperCase,
                HubSpotSDK::Cms::LowerCase,
                HubSpotSDK::Cms::ConcatStrings,
                HubSpotSDK::Cms::Contains,
                HubSpotSDK::Cms::BeginsWith,
                HubSpotSDK::Cms::NumberToString,
                HubSpotSDK::Cms::ParseNumber,
                HubSpotSDK::Cms::FetchExchangeRate,
                HubSpotSDK::Cms::FetchCurrencyDecimalPlaces,
                HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency,
                HubSpotSDK::Cms::DatedExchangeRate,
                HubSpotSDK::Cms::PipelineProbability,
                HubSpotSDK::Cms::MaxNumbers,
                HubSpotSDK::Cms::MinNumbers,
                HubSpotSDK::Cms::LessThan,
                HubSpotSDK::Cms::LessThanOrEqual,
                HubSpotSDK::Cms::MoreThan,
                HubSpotSDK::Cms::MoreThanOrEqual,
                HubSpotSDK::Cms::NumberEquals,
                HubSpotSDK::Cms::StringEquals,
                HubSpotSDK::Cms::IsPipelineStageClosed,
                HubSpotSDK::Cms::Not,
                HubSpotSDK::Cms::Date,
                HubSpotSDK::Cms::Month,
                HubSpotSDK::Cms::Year,
                HubSpotSDK::Cms::Now,
                HubSpotSDK::Cms::TimeBetween,
                HubSpotSDK::Cms::TimeBetweenSkipWeekends,
                HubSpotSDK::Cms::PeriodToMonths,
                HubSpotSDK::Cms::PeriodToWeeks,
                HubSpotSDK::Cms::And,
                HubSpotSDK::Cms::Or,
                HubSpotSDK::Cms::Xor,
                HubSpotSDK::Cms::IfString,
                HubSpotSDK::Cms::IfNumber,
                HubSpotSDK::Cms::IfBoolean,
                HubSpotSDK::Cms::IsPresent,
                HubSpotSDK::Cms::HasEmailReply,
                HubSpotSDK::Cms::HasPlainTextEmailReply,
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML,
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyText,
                HubSpotSDK::Cms::ExtractMostRecentPlainTextEmailReply,
                HubSpotSDK::Cms::SetContainsString,
                HubSpotSDK::Cms::IsEngagementType,
                HubSpotSDK::Cms::FormatFullName,
                HubSpotSDK::Cms::FormatPhoneNumber,
                HubSpotSDK::Cms::FormatSearchablePhoneNumber,
                HubSpotSDK::Cms::AbsoluteValue,
                HubSpotSDK::Cms::SquareRoot,
                HubSpotSDK::Cms::Power,
                HubSpotSDK::Cms::Substring,
                HubSpotSDK::Cms::Euler,
                HubSpotSDK::Cms::StringLength,
                HubSpotSDK::Cms::AddTime,
                HubSpotSDK::Cms::SubtractTime
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::PropertyDefinition::CalculationExpression::Variants
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
