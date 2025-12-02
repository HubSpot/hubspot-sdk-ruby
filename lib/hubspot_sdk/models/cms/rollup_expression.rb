# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class RollupExpression < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_types
        #
        #   @return [Array<HubspotSDK::Models::AssociationSpec>]
        required :association_types,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationSpec] },
                 api_name: :associationTypes

        # @!attribute rollup_operator
        #
        #   @return [String]
        required :rollup_operator, String, api_name: :rollupOperator

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
        #   @return [HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime, nil]
        optional :conditional_expression,
                 union: -> { HubspotSDK::Cms::Expression },
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
        #   @param association_types [Array<HubspotSDK::Models::AssociationSpec>]
        #   @param rollup_operator [String]
        #   @param source_object_type_id [String]
        #   @param source_property_name [String]
        #   @param conditional_expression [HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime]
        #   @param conditional_formula [String]
        #   @param empty_rollup_value [String]
        #   @param source_compare_by_property_name [String]
      end
    end
  end
end
