# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class RollupExpression < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::RollupExpression,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::AssociationSpec]) }
        attr_accessor :association_types

        sig do
          returns(
            HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
          )
        end
        attr_accessor :rollup_operator

        sig { returns(String) }
        attr_accessor :source_object_type_id

        sig { returns(String) }
        attr_accessor :source_property_name

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::RollupExpression::ConditionalExpression::Variants
            )
          )
        end
        attr_reader :conditional_expression

        sig do
          params(
            conditional_expression:
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
                HubSpotSDK::Cms::IsBlank::OrHash,
                HubSpotSDK::Cms::AddTime::OrHash,
                HubSpotSDK::Cms::SubtractTime::OrHash
              )
          ).void
        end
        attr_writer :conditional_expression

        sig { returns(T.nilable(String)) }
        attr_reader :conditional_formula

        sig { params(conditional_formula: String).void }
        attr_writer :conditional_formula

        sig { returns(T.nilable(String)) }
        attr_reader :empty_rollup_value

        sig { params(empty_rollup_value: String).void }
        attr_writer :empty_rollup_value

        sig { returns(T.nilable(String)) }
        attr_reader :source_compare_by_property_name

        sig { params(source_compare_by_property_name: String).void }
        attr_writer :source_compare_by_property_name

        sig do
          params(
            association_types: T::Array[HubSpotSDK::AssociationSpec::OrHash],
            rollup_operator:
              HubSpotSDK::Cms::RollupExpression::RollupOperator::OrSymbol,
            source_object_type_id: String,
            source_property_name: String,
            conditional_expression:
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
                HubSpotSDK::Cms::IsBlank::OrHash,
                HubSpotSDK::Cms::AddTime::OrHash,
                HubSpotSDK::Cms::SubtractTime::OrHash
              ),
            conditional_formula: String,
            empty_rollup_value: String,
            source_compare_by_property_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          association_types:,
          rollup_operator:,
          source_object_type_id:,
          source_property_name:,
          conditional_expression: nil,
          conditional_formula: nil,
          empty_rollup_value: nil,
          source_compare_by_property_name: nil
        )
        end

        sig do
          override.returns(
            {
              association_types: T::Array[HubSpotSDK::AssociationSpec],
              rollup_operator:
                HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol,
              source_object_type_id: String,
              source_property_name: String,
              conditional_expression:
                HubSpotSDK::Cms::RollupExpression::ConditionalExpression::Variants,
              conditional_formula: String,
              empty_rollup_value: String,
              source_compare_by_property_name: String
            }
          )
        end
        def to_hash
        end

        module RollupOperator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::RollupExpression::RollupOperator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AVERAGE =
            T.let(
              :AVERAGE,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          COUNT =
            T.let(
              :COUNT,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          EARLIEST_VALUE =
            T.let(
              :EARLIEST_VALUE,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          LATEST_VALUE =
            T.let(
              :LATEST_VALUE,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MAX =
            T.let(
              :MAX,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MAX_BY =
            T.let(
              :MAX_BY,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MIN =
            T.let(
              :MIN,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MIN_BY =
            T.let(
              :MIN_BY,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_ID_SET =
            T.let(
              :REFERENCED_ID_SET,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_STRING_SET =
            T.let(
              :REFERENCED_STRING_SET,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_STRING_SET_INTERSECTION =
            T.let(
              :REFERENCED_STRING_SET_INTERSECTION,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SUM =
            T.let(
              :SUM,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_MAX_BY =
            T.let(
              :SYNC_MAX_BY,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_MIN_BY =
            T.let(
              :SYNC_MIN_BY,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_VALUE =
            T.let(
              :SYNC_VALUE,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          UNKNOWN_ROLLUP_OPERATOR =
            T.let(
              :UNKNOWN_ROLLUP_OPERATOR,
              HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ConditionalExpression
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
                HubSpotSDK::Cms::IsBlank,
                HubSpotSDK::Cms::AddTime,
                HubSpotSDK::Cms::SubtractTime
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::RollupExpression::ConditionalExpression::Variants
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
