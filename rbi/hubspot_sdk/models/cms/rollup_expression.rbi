# typed: strong

module HubspotSDK
  module Models
    module Cms
      class RollupExpression < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::RollupExpression,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::AssociationSpec]) }
        attr_accessor :association_types

        sig do
          returns(
            HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
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
              HubspotSDK::Cms::RollupExpression::ConditionalExpression::Variants
            )
          )
        end
        attr_reader :conditional_expression

        sig do
          params(
            conditional_expression:
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
            association_types: T::Array[HubspotSDK::AssociationSpec::OrHash],
            rollup_operator:
              HubspotSDK::Cms::RollupExpression::RollupOperator::OrSymbol,
            source_object_type_id: String,
            source_property_name: String,
            conditional_expression:
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
              association_types: T::Array[HubspotSDK::AssociationSpec],
              rollup_operator:
                HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol,
              source_object_type_id: String,
              source_property_name: String,
              conditional_expression:
                HubspotSDK::Cms::RollupExpression::ConditionalExpression::Variants,
              conditional_formula: String,
              empty_rollup_value: String,
              source_compare_by_property_name: String
            }
          )
        end
        def to_hash
        end

        module RollupOperator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::RollupExpression::RollupOperator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AVERAGE =
            T.let(
              :AVERAGE,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          COUNT =
            T.let(
              :COUNT,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          EARLIEST_VALUE =
            T.let(
              :EARLIEST_VALUE,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          LATEST_VALUE =
            T.let(
              :LATEST_VALUE,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MAX =
            T.let(
              :MAX,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MAX_BY =
            T.let(
              :MAX_BY,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MIN =
            T.let(
              :MIN,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          MIN_BY =
            T.let(
              :MIN_BY,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_ID_SET =
            T.let(
              :REFERENCED_ID_SET,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_STRING_SET =
            T.let(
              :REFERENCED_STRING_SET,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          REFERENCED_STRING_SET_INTERSECTION =
            T.let(
              :REFERENCED_STRING_SET_INTERSECTION,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SUM =
            T.let(
              :SUM,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_MAX_BY =
            T.let(
              :SYNC_MAX_BY,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_MIN_BY =
            T.let(
              :SYNC_MIN_BY,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          SYNC_VALUE =
            T.let(
              :SYNC_VALUE,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )
          UNKNOWN_ROLLUP_OPERATOR =
            T.let(
              :UNKNOWN_ROLLUP_OPERATOR,
              HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::RollupExpression::RollupOperator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ConditionalExpression
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
                HubspotSDK::Cms::RollupExpression::ConditionalExpression::Variants
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
