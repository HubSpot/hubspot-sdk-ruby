# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class RollupExpression < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute association_types
        #
        #   @return [Array<HubSpotSDK::Models::AssociationSpec>]
        required :association_types,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::AssociationSpec] },
                 api_name: :associationTypes

        # @!attribute rollup_operator
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::RollupExpression::RollupOperator]
        required :rollup_operator,
                 enum: -> { HubSpotSDK::Cms::RollupExpression::RollupOperator },
                 api_name: :rollupOperator

        # @!attribute source_object_type_id
        #
        #   @return [String]
        required :source_object_type_id, String, api_name: :sourceObjectTypeId

        # @!attribute source_property_name
        #
        #   @return [String]
        required :source_property_name, String, api_name: :sourcePropertyName

        # @!attribute conditional_expression
        #
        #   @return [HubSpotSDK::Models::Cms::ConstantBoolean, HubSpotSDK::Models::Cms::ConstantNumber, HubSpotSDK::Models::Cms::ConstantString, HubSpotSDK::Models::Cms::BooleanPropertyVariable, HubSpotSDK::Models::Cms::StringPropertyVariable, HubSpotSDK::Models::Cms::NumberPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfPropertyVariable, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable, HubSpotSDK::Models::Cms::StringTargetPropertyVariable, HubSpotSDK::Models::Cms::NumberTargetPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubSpotSDK::Models::Cms::AddNumbers, HubSpotSDK::Models::Cms::SubtractNumbers, HubSpotSDK::Models::Cms::MultiplyNumbers, HubSpotSDK::Models::Cms::DivideNumbers, HubSpotSDK::Models::Cms::RoundDownNumbers, HubSpotSDK::Models::Cms::RoundUpNumbers, HubSpotSDK::Models::Cms::RoundNearestNumbers, HubSpotSDK::Models::Cms::UpperCase, HubSpotSDK::Models::Cms::LowerCase, HubSpotSDK::Models::Cms::ConcatStrings, HubSpotSDK::Models::Cms::Contains, HubSpotSDK::Models::Cms::BeginsWith, HubSpotSDK::Models::Cms::NumberToString, HubSpotSDK::Models::Cms::ParseNumber, HubSpotSDK::Models::Cms::FetchExchangeRate, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubSpotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubSpotSDK::Models::Cms::DatedExchangeRate, HubSpotSDK::Models::Cms::PipelineProbability, HubSpotSDK::Models::Cms::MaxNumbers, HubSpotSDK::Models::Cms::MinNumbers, HubSpotSDK::Models::Cms::LessThan, HubSpotSDK::Models::Cms::LessThanOrEqual, HubSpotSDK::Models::Cms::MoreThan, HubSpotSDK::Models::Cms::MoreThanOrEqual, HubSpotSDK::Models::Cms::NumberEquals, HubSpotSDK::Models::Cms::StringEquals, HubSpotSDK::Models::Cms::IsPipelineStageClosed, HubSpotSDK::Models::Cms::Not, HubSpotSDK::Models::Cms::Date, HubSpotSDK::Models::Cms::Month, HubSpotSDK::Models::Cms::Year, HubSpotSDK::Models::Cms::Now, HubSpotSDK::Models::Cms::TimeBetween, HubSpotSDK::Models::Cms::TimeBetweenSkipWeekends, HubSpotSDK::Models::Cms::PeriodToMonths, HubSpotSDK::Models::Cms::PeriodToWeeks, HubSpotSDK::Models::Cms::And, HubSpotSDK::Models::Cms::Or, HubSpotSDK::Models::Cms::Xor, HubSpotSDK::Models::Cms::IfString, HubSpotSDK::Models::Cms::IfNumber, HubSpotSDK::Models::Cms::IfBoolean, HubSpotSDK::Models::Cms::IsPresent, HubSpotSDK::Models::Cms::HasEmailReply, HubSpotSDK::Models::Cms::HasPlainTextEmailReply, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubSpotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubSpotSDK::Models::Cms::SetContainsString, HubSpotSDK::Models::Cms::IsEngagementType, HubSpotSDK::Models::Cms::FormatFullName, HubSpotSDK::Models::Cms::FormatPhoneNumber, HubSpotSDK::Models::Cms::FormatSearchablePhoneNumber, HubSpotSDK::Models::Cms::AbsoluteValue, HubSpotSDK::Models::Cms::SquareRoot, HubSpotSDK::Models::Cms::Power, HubSpotSDK::Models::Cms::Substring, HubSpotSDK::Models::Cms::Euler, HubSpotSDK::Models::Cms::StringLength, HubSpotSDK::Models::Cms::IsBlank, HubSpotSDK::Models::Cms::AddTime, HubSpotSDK::Models::Cms::SubtractTime, nil]
        optional :conditional_expression,
                 union: -> { HubSpotSDK::Cms::RollupExpression::ConditionalExpression },
                 api_name: :conditionalExpression

        # @!attribute conditional_formula
        #
        #   @return [String, nil]
        optional :conditional_formula, String, api_name: :conditionalFormula

        # @!attribute empty_rollup_value
        #
        #   @return [String, nil]
        optional :empty_rollup_value, String, api_name: :emptyRollupValue

        # @!attribute source_compare_by_property_name
        #
        #   @return [String, nil]
        optional :source_compare_by_property_name, String, api_name: :sourceCompareByPropertyName

        # @!method initialize(association_types:, rollup_operator:, source_object_type_id:, source_property_name:, conditional_expression: nil, conditional_formula: nil, empty_rollup_value: nil, source_compare_by_property_name: nil)
        #   @param association_types [Array<HubSpotSDK::Models::AssociationSpec>]
        #   @param rollup_operator [Symbol, HubSpotSDK::Models::Cms::RollupExpression::RollupOperator]
        #   @param source_object_type_id [String]
        #   @param source_property_name [String]
        #   @param conditional_expression [HubSpotSDK::Models::Cms::ConstantBoolean, HubSpotSDK::Models::Cms::ConstantNumber, HubSpotSDK::Models::Cms::ConstantString, HubSpotSDK::Models::Cms::BooleanPropertyVariable, HubSpotSDK::Models::Cms::StringPropertyVariable, HubSpotSDK::Models::Cms::NumberPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfPropertyVariable, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable, HubSpotSDK::Models::Cms::StringTargetPropertyVariable, HubSpotSDK::Models::Cms::NumberTargetPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubSpotSDK::Models::Cms::AddNumbers, HubSpotSDK::Models::Cms::SubtractNumbers, HubSpotSDK::Models::Cms::MultiplyNumbers, HubSpotSDK::Models::Cms::DivideNumbers, HubSpotSDK::Models::Cms::RoundDownNumbers, HubSpotSDK::Models::Cms::RoundUpNumbers, HubSpotSDK::Models::Cms::RoundNearestNumbers, HubSpotSDK::Models::Cms::UpperCase, HubSpotSDK::Models::Cms::LowerCase, HubSpotSDK::Models::Cms::ConcatStrings, HubSpotSDK::Models::Cms::Contains, HubSpotSDK::Models::Cms::BeginsWith, HubSpotSDK::Models::Cms::NumberToString, HubSpotSDK::Models::Cms::ParseNumber, HubSpotSDK::Models::Cms::FetchExchangeRate, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubSpotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubSpotSDK::Models::Cms::DatedExchangeRate, HubSpotSDK::Models::Cms::PipelineProbability, HubSpotSDK::Models::Cms::MaxNumbers, HubSpotSDK::Models::Cms::MinNumbers, HubSpotSDK::Models::Cms::LessThan, HubSpotSDK::Models::Cms::LessThanOrEqual, HubSpotSDK::Models::Cms::MoreThan, HubSpotSDK::Models::Cms::MoreThanOrEqual, HubSpotSDK::Models::Cms::NumberEquals, HubSpotSDK::Models::Cms::StringEquals, HubSpotSDK::Models::Cms::IsPipelineStageClosed, HubSpotSDK::Models::Cms::Not, HubSpotSDK::Models::Cms::Date, HubSpotSDK::Models::Cms::Month, HubSpotSDK::Models::Cms::Year, HubSpotSDK::Models::Cms::Now, HubSpotSDK::Models::Cms::TimeBetween, HubSpotSDK::Models::Cms::TimeBetweenSkipWeekends, HubSpotSDK::Models::Cms::PeriodToMonths, HubSpotSDK::Models::Cms::PeriodToWeeks, HubSpotSDK::Models::Cms::And, HubSpotSDK::Models::Cms::Or, HubSpotSDK::Models::Cms::Xor, HubSpotSDK::Models::Cms::IfString, HubSpotSDK::Models::Cms::IfNumber, HubSpotSDK::Models::Cms::IfBoolean, HubSpotSDK::Models::Cms::IsPresent, HubSpotSDK::Models::Cms::HasEmailReply, HubSpotSDK::Models::Cms::HasPlainTextEmailReply, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubSpotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubSpotSDK::Models::Cms::SetContainsString, HubSpotSDK::Models::Cms::IsEngagementType, HubSpotSDK::Models::Cms::FormatFullName, HubSpotSDK::Models::Cms::FormatPhoneNumber, HubSpotSDK::Models::Cms::FormatSearchablePhoneNumber, HubSpotSDK::Models::Cms::AbsoluteValue, HubSpotSDK::Models::Cms::SquareRoot, HubSpotSDK::Models::Cms::Power, HubSpotSDK::Models::Cms::Substring, HubSpotSDK::Models::Cms::Euler, HubSpotSDK::Models::Cms::StringLength, HubSpotSDK::Models::Cms::IsBlank, HubSpotSDK::Models::Cms::AddTime, HubSpotSDK::Models::Cms::SubtractTime]
        #   @param conditional_formula [String]
        #   @param empty_rollup_value [String]
        #   @param source_compare_by_property_name [String]

        # @see HubSpotSDK::Models::Cms::RollupExpression#rollup_operator
        module RollupOperator
          extend HubSpotSDK::Internal::Type::Enum

          AVERAGE = :AVERAGE
          COUNT = :COUNT
          EARLIEST_VALUE = :EARLIEST_VALUE
          LATEST_VALUE = :LATEST_VALUE
          MAX = :MAX
          MAX_BY = :MAX_BY
          MIN = :MIN
          MIN_BY = :MIN_BY
          REFERENCED_ID_SET = :REFERENCED_ID_SET
          REFERENCED_STRING_SET = :REFERENCED_STRING_SET
          REFERENCED_STRING_SET_INTERSECTION = :REFERENCED_STRING_SET_INTERSECTION
          SUM = :SUM
          SYNC_MAX_BY = :SYNC_MAX_BY
          SYNC_MIN_BY = :SYNC_MIN_BY
          SYNC_VALUE = :SYNC_VALUE
          UNKNOWN_ROLLUP_OPERATOR = :UNKNOWN_ROLLUP_OPERATOR

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Cms::RollupExpression#conditional_expression
        module ConditionalExpression
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
