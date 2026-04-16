# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Year < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::Year::Operator]
        required :operator, enum: -> { HubSpotSDK::Cms::Year::Operator }

        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ConstantBoolean, HubSpotSDK::Models::Cms::ConstantNumber, HubSpotSDK::Models::Cms::ConstantString, HubSpotSDK::Models::Cms::BooleanPropertyVariable, HubSpotSDK::Models::Cms::StringPropertyVariable, HubSpotSDK::Models::Cms::NumberPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfPropertyVariable, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable, HubSpotSDK::Models::Cms::StringTargetPropertyVariable, HubSpotSDK::Models::Cms::NumberTargetPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubSpotSDK::Models::Cms::AddNumbers, HubSpotSDK::Models::Cms::SubtractNumbers, HubSpotSDK::Models::Cms::MultiplyNumbers, HubSpotSDK::Models::Cms::DivideNumbers, HubSpotSDK::Models::Cms::RoundDownNumbers, HubSpotSDK::Models::Cms::RoundUpNumbers, HubSpotSDK::Models::Cms::RoundNearestNumbers, HubSpotSDK::Models::Cms::UpperCase, HubSpotSDK::Models::Cms::LowerCase, HubSpotSDK::Models::Cms::ConcatStrings, HubSpotSDK::Models::Cms::Contains, HubSpotSDK::Models::Cms::BeginsWith, HubSpotSDK::Models::Cms::NumberToString, HubSpotSDK::Models::Cms::ParseNumber, HubSpotSDK::Models::Cms::FetchExchangeRate, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubSpotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubSpotSDK::Models::Cms::DatedExchangeRate, HubSpotSDK::Models::Cms::PipelineProbability, HubSpotSDK::Models::Cms::MaxNumbers, HubSpotSDK::Models::Cms::MinNumbers, HubSpotSDK::Models::Cms::LessThan, HubSpotSDK::Models::Cms::LessThanOrEqual, HubSpotSDK::Models::Cms::MoreThan, HubSpotSDK::Models::Cms::MoreThanOrEqual, HubSpotSDK::Models::Cms::NumberEquals, HubSpotSDK::Models::Cms::StringEquals, HubSpotSDK::Models::Cms::IsPipelineStageClosed, HubSpotSDK::Models::Cms::Not, HubSpotSDK::Models::Cms::Date, HubSpotSDK::Models::Cms::Month, HubSpotSDK::Models::Cms::Year, HubSpotSDK::Models::Cms::Now, HubSpotSDK::Models::Cms::TimeBetween, HubSpotSDK::Models::Cms::TimeBetweenSkipWeekends, HubSpotSDK::Models::Cms::PeriodToMonths, HubSpotSDK::Models::Cms::PeriodToWeeks, HubSpotSDK::Models::Cms::And, HubSpotSDK::Models::Cms::Or, HubSpotSDK::Models::Cms::Xor, HubSpotSDK::Models::Cms::IfString, HubSpotSDK::Models::Cms::IfNumber, HubSpotSDK::Models::Cms::IfBoolean, HubSpotSDK::Models::Cms::IsPresent, HubSpotSDK::Models::Cms::HasEmailReply, HubSpotSDK::Models::Cms::HasPlainTextEmailReply, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubSpotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubSpotSDK::Models::Cms::SetContainsString, HubSpotSDK::Models::Cms::IsEngagementType, HubSpotSDK::Models::Cms::FormatFullName, HubSpotSDK::Models::Cms::FormatPhoneNumber, HubSpotSDK::Models::Cms::FormatSearchablePhoneNumber, HubSpotSDK::Models::Cms::AbsoluteValue, HubSpotSDK::Models::Cms::SquareRoot, HubSpotSDK::Models::Cms::Power, HubSpotSDK::Models::Cms::Substring, HubSpotSDK::Models::Cms::Euler, HubSpotSDK::Models::Cms::StringLength, HubSpotSDK::Models::Cms::IsBlank, HubSpotSDK::Models::Cms::AddTime, HubSpotSDK::Models::Cms::SubtractTime>, nil]
        optional :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Cms::Year::Input] }

        # @!attribute property_name
        #
        #   @return [String, nil]
        optional :property_name, String, api_name: :propertyName

        # @!attribute value
        #
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
        #   @param operator [Symbol, HubSpotSDK::Models::Cms::Year::Operator]
        #   @param inputs [Array<HubSpotSDK::Models::Cms::ConstantBoolean, HubSpotSDK::Models::Cms::ConstantNumber, HubSpotSDK::Models::Cms::ConstantString, HubSpotSDK::Models::Cms::BooleanPropertyVariable, HubSpotSDK::Models::Cms::StringPropertyVariable, HubSpotSDK::Models::Cms::NumberPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfPropertyVariable, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable, HubSpotSDK::Models::Cms::StringTargetPropertyVariable, HubSpotSDK::Models::Cms::NumberTargetPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubSpotSDK::Models::Cms::AddNumbers, HubSpotSDK::Models::Cms::SubtractNumbers, HubSpotSDK::Models::Cms::MultiplyNumbers, HubSpotSDK::Models::Cms::DivideNumbers, HubSpotSDK::Models::Cms::RoundDownNumbers, HubSpotSDK::Models::Cms::RoundUpNumbers, HubSpotSDK::Models::Cms::RoundNearestNumbers, HubSpotSDK::Models::Cms::UpperCase, HubSpotSDK::Models::Cms::LowerCase, HubSpotSDK::Models::Cms::ConcatStrings, HubSpotSDK::Models::Cms::Contains, HubSpotSDK::Models::Cms::BeginsWith, HubSpotSDK::Models::Cms::NumberToString, HubSpotSDK::Models::Cms::ParseNumber, HubSpotSDK::Models::Cms::FetchExchangeRate, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubSpotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubSpotSDK::Models::Cms::DatedExchangeRate, HubSpotSDK::Models::Cms::PipelineProbability, HubSpotSDK::Models::Cms::MaxNumbers, HubSpotSDK::Models::Cms::MinNumbers, HubSpotSDK::Models::Cms::LessThan, HubSpotSDK::Models::Cms::LessThanOrEqual, HubSpotSDK::Models::Cms::MoreThan, HubSpotSDK::Models::Cms::MoreThanOrEqual, HubSpotSDK::Models::Cms::NumberEquals, HubSpotSDK::Models::Cms::StringEquals, HubSpotSDK::Models::Cms::IsPipelineStageClosed, HubSpotSDK::Models::Cms::Not, HubSpotSDK::Models::Cms::Date, HubSpotSDK::Models::Cms::Month, HubSpotSDK::Models::Cms::Year, HubSpotSDK::Models::Cms::Now, HubSpotSDK::Models::Cms::TimeBetween, HubSpotSDK::Models::Cms::TimeBetweenSkipWeekends, HubSpotSDK::Models::Cms::PeriodToMonths, HubSpotSDK::Models::Cms::PeriodToWeeks, HubSpotSDK::Models::Cms::And, HubSpotSDK::Models::Cms::Or, HubSpotSDK::Models::Cms::Xor, HubSpotSDK::Models::Cms::IfString, HubSpotSDK::Models::Cms::IfNumber, HubSpotSDK::Models::Cms::IfBoolean, HubSpotSDK::Models::Cms::IsPresent, HubSpotSDK::Models::Cms::HasEmailReply, HubSpotSDK::Models::Cms::HasPlainTextEmailReply, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubSpotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubSpotSDK::Models::Cms::SetContainsString, HubSpotSDK::Models::Cms::IsEngagementType, HubSpotSDK::Models::Cms::FormatFullName, HubSpotSDK::Models::Cms::FormatPhoneNumber, HubSpotSDK::Models::Cms::FormatSearchablePhoneNumber, HubSpotSDK::Models::Cms::AbsoluteValue, HubSpotSDK::Models::Cms::SquareRoot, HubSpotSDK::Models::Cms::Power, HubSpotSDK::Models::Cms::Substring, HubSpotSDK::Models::Cms::Euler, HubSpotSDK::Models::Cms::StringLength, HubSpotSDK::Models::Cms::IsBlank, HubSpotSDK::Models::Cms::AddTime, HubSpotSDK::Models::Cms::SubtractTime>]
        #   @param property_name [String]
        #   @param value [Float]

        # @see HubSpotSDK::Models::Cms::Year#operator
        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          YEAR = :YEAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Input
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Cms::ConstantBoolean }

          variant -> { HubSpotSDK::Cms::ConstantNumber }

          variant -> { HubSpotSDK::Cms::ConstantString }

          variant -> { HubSpotSDK::Cms::BooleanPropertyVariable }

          variant -> { HubSpotSDK::Cms::StringPropertyVariable }

          variant -> { HubSpotSDK::Cms::NumberPropertyVariable }

          variant -> { HubSpotSDK::Cms::TimestampOfPropertyVariable }

          variant -> { HubSpotSDK::Cms::BooleanTargetPropertyVariable }

          variant -> { HubSpotSDK::Cms::StringTargetPropertyVariable }

          variant -> { HubSpotSDK::Cms::NumberTargetPropertyVariable }

          variant -> { HubSpotSDK::Cms::TimestampOfTargetPropertyVariable }

          variant -> { HubSpotSDK::Cms::AddNumbers }

          variant -> { HubSpotSDK::Cms::SubtractNumbers }

          variant -> { HubSpotSDK::Cms::MultiplyNumbers }

          variant -> { HubSpotSDK::Cms::DivideNumbers }

          variant -> { HubSpotSDK::Cms::RoundDownNumbers }

          variant -> { HubSpotSDK::Cms::RoundUpNumbers }

          variant -> { HubSpotSDK::Cms::RoundNearestNumbers }

          variant -> { HubSpotSDK::Cms::UpperCase }

          variant -> { HubSpotSDK::Cms::LowerCase }

          variant -> { HubSpotSDK::Cms::ConcatStrings }

          variant -> { HubSpotSDK::Cms::Contains }

          variant -> { HubSpotSDK::Cms::BeginsWith }

          variant -> { HubSpotSDK::Cms::NumberToString }

          variant -> { HubSpotSDK::Cms::ParseNumber }

          variant -> { HubSpotSDK::Cms::FetchExchangeRate }

          variant -> { HubSpotSDK::Cms::FetchCurrencyDecimalPlaces }

          variant -> { HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency }

          variant -> { HubSpotSDK::Cms::DatedExchangeRate }

          variant -> { HubSpotSDK::Cms::PipelineProbability }

          variant -> { HubSpotSDK::Cms::MaxNumbers }

          variant -> { HubSpotSDK::Cms::MinNumbers }

          variant -> { HubSpotSDK::Cms::LessThan }

          variant -> { HubSpotSDK::Cms::LessThanOrEqual }

          variant -> { HubSpotSDK::Cms::MoreThan }

          variant -> { HubSpotSDK::Cms::MoreThanOrEqual }

          variant -> { HubSpotSDK::Cms::NumberEquals }

          variant -> { HubSpotSDK::Cms::StringEquals }

          variant -> { HubSpotSDK::Cms::IsPipelineStageClosed }

          variant -> { HubSpotSDK::Cms::Not }

          variant -> { HubSpotSDK::Cms::Date }

          variant -> { HubSpotSDK::Cms::Month }

          variant -> { HubSpotSDK::Cms::Year }

          variant -> { HubSpotSDK::Cms::Now }

          variant -> { HubSpotSDK::Cms::TimeBetween }

          variant -> { HubSpotSDK::Cms::TimeBetweenSkipWeekends }

          variant -> { HubSpotSDK::Cms::PeriodToMonths }

          variant -> { HubSpotSDK::Cms::PeriodToWeeks }

          variant -> { HubSpotSDK::Cms::And }

          variant -> { HubSpotSDK::Cms::Or }

          variant -> { HubSpotSDK::Cms::Xor }

          variant -> { HubSpotSDK::Cms::IfString }

          variant -> { HubSpotSDK::Cms::IfNumber }

          variant -> { HubSpotSDK::Cms::IfBoolean }

          variant -> { HubSpotSDK::Cms::IsPresent }

          variant -> { HubSpotSDK::Cms::HasEmailReply }

          variant -> { HubSpotSDK::Cms::HasPlainTextEmailReply }

          variant -> { HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML }

          variant -> { HubSpotSDK::Cms::ExtractMostRecentEmailReplyText }

          variant -> { HubSpotSDK::Cms::ExtractMostRecentPlainTextEmailReply }

          variant -> { HubSpotSDK::Cms::SetContainsString }

          variant -> { HubSpotSDK::Cms::IsEngagementType }

          variant -> { HubSpotSDK::Cms::FormatFullName }

          variant -> { HubSpotSDK::Cms::FormatPhoneNumber }

          variant -> { HubSpotSDK::Cms::FormatSearchablePhoneNumber }

          variant -> { HubSpotSDK::Cms::AbsoluteValue }

          variant -> { HubSpotSDK::Cms::SquareRoot }

          variant -> { HubSpotSDK::Cms::Power }

          variant -> { HubSpotSDK::Cms::Substring }

          variant -> { HubSpotSDK::Cms::Euler }

          variant -> { HubSpotSDK::Cms::StringLength }

          variant -> { HubSpotSDK::Cms::IsBlank }

          variant -> { HubSpotSDK::Cms::AddTime }

          variant -> { HubSpotSDK::Cms::SubtractTime }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Cms::ConstantBoolean, HubSpotSDK::Models::Cms::ConstantNumber, HubSpotSDK::Models::Cms::ConstantString, HubSpotSDK::Models::Cms::BooleanPropertyVariable, HubSpotSDK::Models::Cms::StringPropertyVariable, HubSpotSDK::Models::Cms::NumberPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfPropertyVariable, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable, HubSpotSDK::Models::Cms::StringTargetPropertyVariable, HubSpotSDK::Models::Cms::NumberTargetPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubSpotSDK::Models::Cms::AddNumbers, HubSpotSDK::Models::Cms::SubtractNumbers, HubSpotSDK::Models::Cms::MultiplyNumbers, HubSpotSDK::Models::Cms::DivideNumbers, HubSpotSDK::Models::Cms::RoundDownNumbers, HubSpotSDK::Models::Cms::RoundUpNumbers, HubSpotSDK::Models::Cms::RoundNearestNumbers, HubSpotSDK::Models::Cms::UpperCase, HubSpotSDK::Models::Cms::LowerCase, HubSpotSDK::Models::Cms::ConcatStrings, HubSpotSDK::Models::Cms::Contains, HubSpotSDK::Models::Cms::BeginsWith, HubSpotSDK::Models::Cms::NumberToString, HubSpotSDK::Models::Cms::ParseNumber, HubSpotSDK::Models::Cms::FetchExchangeRate, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubSpotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubSpotSDK::Models::Cms::DatedExchangeRate, HubSpotSDK::Models::Cms::PipelineProbability, HubSpotSDK::Models::Cms::MaxNumbers, HubSpotSDK::Models::Cms::MinNumbers, HubSpotSDK::Models::Cms::LessThan, HubSpotSDK::Models::Cms::LessThanOrEqual, HubSpotSDK::Models::Cms::MoreThan, HubSpotSDK::Models::Cms::MoreThanOrEqual, HubSpotSDK::Models::Cms::NumberEquals, HubSpotSDK::Models::Cms::StringEquals, HubSpotSDK::Models::Cms::IsPipelineStageClosed, HubSpotSDK::Models::Cms::Not, HubSpotSDK::Models::Cms::Date, HubSpotSDK::Models::Cms::Month, HubSpotSDK::Models::Cms::Year, HubSpotSDK::Models::Cms::Now, HubSpotSDK::Models::Cms::TimeBetween, HubSpotSDK::Models::Cms::TimeBetweenSkipWeekends, HubSpotSDK::Models::Cms::PeriodToMonths, HubSpotSDK::Models::Cms::PeriodToWeeks, HubSpotSDK::Models::Cms::And, HubSpotSDK::Models::Cms::Or, HubSpotSDK::Models::Cms::Xor, HubSpotSDK::Models::Cms::IfString, HubSpotSDK::Models::Cms::IfNumber, HubSpotSDK::Models::Cms::IfBoolean, HubSpotSDK::Models::Cms::IsPresent, HubSpotSDK::Models::Cms::HasEmailReply, HubSpotSDK::Models::Cms::HasPlainTextEmailReply, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubSpotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubSpotSDK::Models::Cms::SetContainsString, HubSpotSDK::Models::Cms::IsEngagementType, HubSpotSDK::Models::Cms::FormatFullName, HubSpotSDK::Models::Cms::FormatPhoneNumber, HubSpotSDK::Models::Cms::FormatSearchablePhoneNumber, HubSpotSDK::Models::Cms::AbsoluteValue, HubSpotSDK::Models::Cms::SquareRoot, HubSpotSDK::Models::Cms::Power, HubSpotSDK::Models::Cms::Substring, HubSpotSDK::Models::Cms::Euler, HubSpotSDK::Models::Cms::StringLength, HubSpotSDK::Models::Cms::IsBlank, HubSpotSDK::Models::Cms::AddTime, HubSpotSDK::Models::Cms::SubtractTime)]
        end
      end
    end
  end
end
