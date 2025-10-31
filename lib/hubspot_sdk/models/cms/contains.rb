# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Contains < HubspotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Contains::Operator]
        required :operator, enum: -> { HubspotSDK::Cms::Contains::Operator }

        # @!attribute string_to_check
        #
        #   @return [HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime]
        required :string_to_check,
                 union: -> { HubspotSDK::Cms::Contains::StringToCheck },
                 api_name: :stringToCheck

        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime>, nil]
        optional :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Cms::Contains::Input] }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Boolean, nil]
        optional :value, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubspotSDK::Models::Cms::Contains::Operator]
        #   @param string_to_check [HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime]
        #   @param inputs [Array<HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime>]
        #   @param property_name [String]
        #   @param value [Boolean]

        # @see HubspotSDK::Models::Cms::Contains#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          CONTAINS = :CONTAINS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Cms::Contains#string_to_check
        module StringToCheck
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Cms::ConstantBoolean }

          variant -> { HubspotSDK::Cms::ConstantNumber }

          variant -> { HubspotSDK::Cms::ConstantString }

          variant -> { HubspotSDK::Cms::BooleanPropertyVariable }

          variant -> { HubspotSDK::Cms::StringPropertyVariable }

          variant -> { HubspotSDK::Cms::NumberPropertyVariable }

          variant -> { HubspotSDK::Cms::TimestampOfPropertyVariable }

          variant -> { HubspotSDK::Cms::BooleanTargetPropertyVariable }

          variant -> { HubspotSDK::Cms::StringTargetPropertyVariable }

          variant -> { HubspotSDK::Cms::NumberTargetPropertyVariable }

          variant -> { HubspotSDK::Cms::TimestampOfTargetPropertyVariable }

          variant -> { HubspotSDK::Cms::AddNumbers }

          variant -> { HubspotSDK::Cms::SubtractNumbers }

          variant -> { HubspotSDK::Cms::MultiplyNumbers }

          variant -> { HubspotSDK::Cms::DivideNumbers }

          variant -> { HubspotSDK::Cms::RoundDownNumbers }

          variant -> { HubspotSDK::Cms::RoundUpNumbers }

          variant -> { HubspotSDK::Cms::RoundNearestNumbers }

          variant -> { HubspotSDK::Cms::UpperCase }

          variant -> { HubspotSDK::Cms::LowerCase }

          variant -> { HubspotSDK::Cms::ConcatStrings }

          variant -> { HubspotSDK::Cms::Contains }

          variant -> { HubspotSDK::Cms::BeginsWith }

          variant -> { HubspotSDK::Cms::NumberToString }

          variant -> { HubspotSDK::Cms::ParseNumber }

          variant -> { HubspotSDK::Cms::FetchExchangeRate }

          variant -> { HubspotSDK::Cms::FetchCurrencyDecimalPlaces }

          variant -> { HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency }

          variant -> { HubspotSDK::Cms::DatedExchangeRate }

          variant -> { HubspotSDK::Cms::PipelineProbability }

          variant -> { HubspotSDK::Cms::MaxNumbers }

          variant -> { HubspotSDK::Cms::MinNumbers }

          variant -> { HubspotSDK::Cms::LessThan }

          variant -> { HubspotSDK::Cms::LessThanOrEqual }

          variant -> { HubspotSDK::Cms::MoreThan }

          variant -> { HubspotSDK::Cms::MoreThanOrEqual }

          variant -> { HubspotSDK::Cms::NumberEquals }

          variant -> { HubspotSDK::Cms::StringEquals }

          variant -> { HubspotSDK::Cms::IsPipelineStageClosed }

          variant -> { HubspotSDK::Cms::Not }

          variant -> { HubspotSDK::Cms::Date }

          variant -> { HubspotSDK::Cms::Month }

          variant -> { HubspotSDK::Cms::Year }

          variant -> { HubspotSDK::Cms::Now }

          variant -> { HubspotSDK::Cms::TimeBetween }

          variant -> { HubspotSDK::Cms::PeriodToMonths }

          variant -> { HubspotSDK::Cms::PeriodToWeeks }

          variant -> { HubspotSDK::Cms::And }

          variant -> { HubspotSDK::Cms::Or }

          variant -> { HubspotSDK::Cms::Xor }

          variant -> { HubspotSDK::Cms::IfString }

          variant -> { HubspotSDK::Cms::IfNumber }

          variant -> { HubspotSDK::Cms::IfBoolean }

          variant -> { HubspotSDK::Cms::IsPresent }

          variant -> { HubspotSDK::Cms::HasEmailReply }

          variant -> { HubspotSDK::Cms::HasPlainTextEmailReply }

          variant -> { HubspotSDK::Cms::ExtractMostRecentEmailReplyHTML }

          variant -> { HubspotSDK::Cms::ExtractMostRecentEmailReplyText }

          variant -> { HubspotSDK::Cms::ExtractMostRecentPlainTextEmailReply }

          variant -> { HubspotSDK::Cms::SetContainsString }

          variant -> { HubspotSDK::Cms::IsEngagementType }

          variant -> { HubspotSDK::Cms::FormatFullName }

          variant -> { HubspotSDK::Cms::AbsoluteValue }

          variant -> { HubspotSDK::Cms::SquareRoot }

          variant -> { HubspotSDK::Cms::Power }

          variant -> { HubspotSDK::Cms::Substring }

          variant -> { HubspotSDK::Cms::Euler }

          variant -> { HubspotSDK::Cms::StringLength }

          variant -> { HubspotSDK::Cms::AddTime }

          variant -> { HubspotSDK::Cms::SubtractTime }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime)]
        end

        module Input
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Cms::ConstantBoolean }

          variant -> { HubspotSDK::Cms::ConstantNumber }

          variant -> { HubspotSDK::Cms::ConstantString }

          variant -> { HubspotSDK::Cms::BooleanPropertyVariable }

          variant -> { HubspotSDK::Cms::StringPropertyVariable }

          variant -> { HubspotSDK::Cms::NumberPropertyVariable }

          variant -> { HubspotSDK::Cms::TimestampOfPropertyVariable }

          variant -> { HubspotSDK::Cms::BooleanTargetPropertyVariable }

          variant -> { HubspotSDK::Cms::StringTargetPropertyVariable }

          variant -> { HubspotSDK::Cms::NumberTargetPropertyVariable }

          variant -> { HubspotSDK::Cms::TimestampOfTargetPropertyVariable }

          variant -> { HubspotSDK::Cms::AddNumbers }

          variant -> { HubspotSDK::Cms::SubtractNumbers }

          variant -> { HubspotSDK::Cms::MultiplyNumbers }

          variant -> { HubspotSDK::Cms::DivideNumbers }

          variant -> { HubspotSDK::Cms::RoundDownNumbers }

          variant -> { HubspotSDK::Cms::RoundUpNumbers }

          variant -> { HubspotSDK::Cms::RoundNearestNumbers }

          variant -> { HubspotSDK::Cms::UpperCase }

          variant -> { HubspotSDK::Cms::LowerCase }

          variant -> { HubspotSDK::Cms::ConcatStrings }

          variant -> { HubspotSDK::Cms::Contains }

          variant -> { HubspotSDK::Cms::BeginsWith }

          variant -> { HubspotSDK::Cms::NumberToString }

          variant -> { HubspotSDK::Cms::ParseNumber }

          variant -> { HubspotSDK::Cms::FetchExchangeRate }

          variant -> { HubspotSDK::Cms::FetchCurrencyDecimalPlaces }

          variant -> { HubspotSDK::Cms::FetchSingleCurrencyPortalCurrency }

          variant -> { HubspotSDK::Cms::DatedExchangeRate }

          variant -> { HubspotSDK::Cms::PipelineProbability }

          variant -> { HubspotSDK::Cms::MaxNumbers }

          variant -> { HubspotSDK::Cms::MinNumbers }

          variant -> { HubspotSDK::Cms::LessThan }

          variant -> { HubspotSDK::Cms::LessThanOrEqual }

          variant -> { HubspotSDK::Cms::MoreThan }

          variant -> { HubspotSDK::Cms::MoreThanOrEqual }

          variant -> { HubspotSDK::Cms::NumberEquals }

          variant -> { HubspotSDK::Cms::StringEquals }

          variant -> { HubspotSDK::Cms::IsPipelineStageClosed }

          variant -> { HubspotSDK::Cms::Not }

          variant -> { HubspotSDK::Cms::Date }

          variant -> { HubspotSDK::Cms::Month }

          variant -> { HubspotSDK::Cms::Year }

          variant -> { HubspotSDK::Cms::Now }

          variant -> { HubspotSDK::Cms::TimeBetween }

          variant -> { HubspotSDK::Cms::PeriodToMonths }

          variant -> { HubspotSDK::Cms::PeriodToWeeks }

          variant -> { HubspotSDK::Cms::And }

          variant -> { HubspotSDK::Cms::Or }

          variant -> { HubspotSDK::Cms::Xor }

          variant -> { HubspotSDK::Cms::IfString }

          variant -> { HubspotSDK::Cms::IfNumber }

          variant -> { HubspotSDK::Cms::IfBoolean }

          variant -> { HubspotSDK::Cms::IsPresent }

          variant -> { HubspotSDK::Cms::HasEmailReply }

          variant -> { HubspotSDK::Cms::HasPlainTextEmailReply }

          variant -> { HubspotSDK::Cms::ExtractMostRecentEmailReplyHTML }

          variant -> { HubspotSDK::Cms::ExtractMostRecentEmailReplyText }

          variant -> { HubspotSDK::Cms::ExtractMostRecentPlainTextEmailReply }

          variant -> { HubspotSDK::Cms::SetContainsString }

          variant -> { HubspotSDK::Cms::IsEngagementType }

          variant -> { HubspotSDK::Cms::FormatFullName }

          variant -> { HubspotSDK::Cms::AbsoluteValue }

          variant -> { HubspotSDK::Cms::SquareRoot }

          variant -> { HubspotSDK::Cms::Power }

          variant -> { HubspotSDK::Cms::Substring }

          variant -> { HubspotSDK::Cms::Euler }

          variant -> { HubspotSDK::Cms::StringLength }

          variant -> { HubspotSDK::Cms::AddTime }

          variant -> { HubspotSDK::Cms::SubtractTime }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime)]
        end
      end
    end
  end
end
