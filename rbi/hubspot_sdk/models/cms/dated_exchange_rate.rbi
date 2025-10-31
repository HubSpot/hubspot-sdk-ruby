# typed: strong

module HubspotSDK
  module Models
    module Cms
      class DatedExchangeRate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::DatedExchangeRate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Cms::DatedExchangeRate::Operator::TaggedSymbol)
        end
        attr_accessor :operator

        sig do
          returns(
            T.nilable(
              T::Array[HubspotSDK::Cms::DatedExchangeRate::Input::Variants]
            )
          )
        end
        attr_reader :inputs

        sig do
          params(
            inputs:
              T::Array[
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
                  HubspotSDK::Cms::AbsoluteValue,
                  HubspotSDK::Cms::SquareRoot,
                  HubspotSDK::Cms::Power,
                  HubspotSDK::Cms::Substring,
                  HubspotSDK::Cms::Euler,
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

        sig { returns(T.nilable(Float)) }
        attr_reader :value

        sig { params(value: Float).void }
        attr_writer :value

        sig do
          params(
            operator: HubspotSDK::Cms::DatedExchangeRate::Operator::OrSymbol,
            inputs:
              T::Array[
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
                  HubspotSDK::Cms::AbsoluteValue,
                  HubspotSDK::Cms::SquareRoot,
                  HubspotSDK::Cms::Power,
                  HubspotSDK::Cms::Substring,
                  HubspotSDK::Cms::Euler,
                  HubspotSDK::Cms::StringLength,
                  HubspotSDK::Cms::AddTime,
                  HubspotSDK::Cms::SubtractTime
                )
              ],
            property_name: String,
            value: Float
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator:
                HubspotSDK::Cms::DatedExchangeRate::Operator::TaggedSymbol,
              inputs:
                T::Array[HubspotSDK::Cms::DatedExchangeRate::Input::Variants],
              property_name: String,
              value: Float
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::DatedExchangeRate::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATED_EXCHANGE_RATE =
            T.let(
              :DATED_EXCHANGE_RATE,
              HubspotSDK::Cms::DatedExchangeRate::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::DatedExchangeRate::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
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
              T::Array[HubspotSDK::Cms::DatedExchangeRate::Input::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
