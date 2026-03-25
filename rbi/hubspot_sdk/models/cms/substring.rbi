# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Substring < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Substring, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::Substring::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig { returns(HubspotSDK::Cms::Substring::StringToCheck::Variants) }
        attr_accessor :string_to_check

        sig do
          returns(
            T.nilable(T::Array[HubspotSDK::Cms::Substring::Input::Variants])
          )
        end
        attr_reader :inputs

        sig do
          params(
            inputs:
              T::Array[
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
                  HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
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
                  HubspotSDK::Cms::Now::OrHash,
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
                  HubspotSDK::Cms::IsEngagementType::OrHash,
                  HubspotSDK::Cms::FormatFullName,
                  HubspotSDK::Cms::FormatPhoneNumber,
                  HubspotSDK::Cms::FormatSearchablePhoneNumber,
                  HubspotSDK::Cms::AbsoluteValue,
                  HubspotSDK::Cms::SquareRoot,
                  HubspotSDK::Cms::Power,
                  HubspotSDK::Cms::Substring,
                  HubspotSDK::Cms::Euler::OrHash,
                  HubspotSDK::Cms::StringLength,
                  HubspotSDK::Cms::AddTime,
                  HubspotSDK::Cms::SubtractTime
                )
              ]
          ).void
        end
        attr_writer :inputs

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        sig do
          params(
            operator: HubspotSDK::Cms::Substring::Operator::OrSymbol,
            string_to_check:
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
                HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
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
                HubspotSDK::Cms::Now::OrHash,
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
                HubspotSDK::Cms::IsEngagementType::OrHash,
                HubspotSDK::Cms::FormatFullName,
                HubspotSDK::Cms::FormatPhoneNumber,
                HubspotSDK::Cms::FormatSearchablePhoneNumber,
                HubspotSDK::Cms::AbsoluteValue,
                HubspotSDK::Cms::SquareRoot,
                HubspotSDK::Cms::Power,
                HubspotSDK::Cms::Substring,
                HubspotSDK::Cms::Euler::OrHash,
                HubspotSDK::Cms::StringLength,
                HubspotSDK::Cms::AddTime,
                HubspotSDK::Cms::SubtractTime
              ),
            inputs:
              T::Array[
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
                  HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
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
                  HubspotSDK::Cms::Now::OrHash,
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
                  HubspotSDK::Cms::IsEngagementType::OrHash,
                  HubspotSDK::Cms::FormatFullName,
                  HubspotSDK::Cms::FormatPhoneNumber,
                  HubspotSDK::Cms::FormatSearchablePhoneNumber,
                  HubspotSDK::Cms::AbsoluteValue,
                  HubspotSDK::Cms::SquareRoot,
                  HubspotSDK::Cms::Power,
                  HubspotSDK::Cms::Substring,
                  HubspotSDK::Cms::Euler::OrHash,
                  HubspotSDK::Cms::StringLength,
                  HubspotSDK::Cms::AddTime,
                  HubspotSDK::Cms::SubtractTime
                )
              ],
            property_name: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          operator:,
          string_to_check:,
          inputs: nil,
          property_name: nil,
          value: nil
        )
        end

        sig do
          override.returns(
            {
              operator: HubspotSDK::Cms::Substring::Operator::TaggedSymbol,
              string_to_check:
                HubspotSDK::Cms::Substring::StringToCheck::Variants,
              inputs: T::Array[HubspotSDK::Cms::Substring::Input::Variants],
              property_name: String,
              value: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::Substring::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSTRING =
            T.let(
              :SUBSTRING,
              HubspotSDK::Cms::Substring::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::Substring::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module StringToCheck
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
              T::Array[HubspotSDK::Cms::Substring::StringToCheck::Variants]
            )
          end
          def self.variants
          end
        end

        module Input
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
              T::Array[HubspotSDK::Cms::Substring::Input::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
