# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class And < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::And, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :enclosed_in_parentheses

        sig { returns(HubSpotSDK::Cms::And::Operator::TaggedSymbol) }
        attr_accessor :operator

        sig do
          returns(T.nilable(T::Array[HubSpotSDK::Cms::And::Input::Variants]))
        end
        attr_reader :inputs

        sig do
          params(
            inputs:
              T::Array[
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
                  HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
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
                  HubSpotSDK::Cms::Now::OrHash,
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
                  HubSpotSDK::Cms::IsEngagementType::OrHash,
                  HubSpotSDK::Cms::FormatFullName,
                  HubSpotSDK::Cms::FormatPhoneNumber,
                  HubSpotSDK::Cms::FormatSearchablePhoneNumber,
                  HubSpotSDK::Cms::AbsoluteValue,
                  HubSpotSDK::Cms::SquareRoot,
                  HubSpotSDK::Cms::Power,
                  HubSpotSDK::Cms::Substring,
                  HubSpotSDK::Cms::Euler::OrHash,
                  HubSpotSDK::Cms::StringLength,
                  HubSpotSDK::Cms::IsBlank,
                  HubSpotSDK::Cms::AddTime,
                  HubSpotSDK::Cms::SubtractTime
                )
              ]
          ).void
        end
        attr_writer :inputs

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :value

        sig { params(value: T::Boolean).void }
        attr_writer :value

        sig do
          params(
            enclosed_in_parentheses: T::Boolean,
            operator: HubSpotSDK::Cms::And::Operator::OrSymbol,
            inputs:
              T::Array[
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
                  HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::OrHash,
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
                  HubSpotSDK::Cms::Now::OrHash,
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
                  HubSpotSDK::Cms::IsEngagementType::OrHash,
                  HubSpotSDK::Cms::FormatFullName,
                  HubSpotSDK::Cms::FormatPhoneNumber,
                  HubSpotSDK::Cms::FormatSearchablePhoneNumber,
                  HubSpotSDK::Cms::AbsoluteValue,
                  HubSpotSDK::Cms::SquareRoot,
                  HubSpotSDK::Cms::Power,
                  HubSpotSDK::Cms::Substring,
                  HubSpotSDK::Cms::Euler::OrHash,
                  HubSpotSDK::Cms::StringLength,
                  HubSpotSDK::Cms::IsBlank,
                  HubSpotSDK::Cms::AddTime,
                  HubSpotSDK::Cms::SubtractTime
                )
              ],
            property_name: String,
            value: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          enclosed_in_parentheses:,
          operator:,
          inputs: nil,
          property_name: nil,
          value: nil
        )
        end

        sig do
          override.returns(
            {
              enclosed_in_parentheses: T::Boolean,
              operator: HubSpotSDK::Cms::And::Operator::TaggedSymbol,
              inputs: T::Array[HubSpotSDK::Cms::And::Input::Variants],
              property_name: String,
              value: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::And::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AND = T.let(:AND, HubSpotSDK::Cms::And::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::And::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Input
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
            override.returns(T::Array[HubSpotSDK::Cms::And::Input::Variants])
          end
          def self.variants
          end
        end
      end
    end
  end
end
