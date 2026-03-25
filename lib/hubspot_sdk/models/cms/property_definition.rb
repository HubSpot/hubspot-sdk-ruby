# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class PropertyDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute property
        #   A HubSpot property
        #
        #   @return [HubspotSDK::Models::Property]
        required :property, -> { HubspotSDK::Property }

        # @!attribute calculation_expression
        #
        #   @return [HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::TimeBetweenSkipWeekends, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::FormatPhoneNumber, HubspotSDK::Models::Cms::FormatSearchablePhoneNumber, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime, nil]
        optional :calculation_expression,
                 union: -> { HubspotSDK::Cms::PropertyDefinition::CalculationExpression },
                 api_name: :calculationExpression

        # @!attribute calculation_formula
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute definition_source
        #
        #   @return [HubspotSDK::Models::Cms::PropertyDefinitionSource, nil]
        optional :definition_source,
                 -> {
                   HubspotSDK::Cms::PropertyDefinitionSource
                 },
                 api_name: :definitionSource

        # @!attribute extension_data
        #
        #   @return [HubspotSDK::Models::Cms::ExtensionData, nil]
        optional :extension_data, -> { HubspotSDK::Cms::ExtensionData }, api_name: :extensionData

        # @!attribute external_options_meta_data
        #
        #   @return [HubspotSDK::Models::Cms::ExternalOptionsMetaData, nil]
        optional :external_options_meta_data,
                 -> { HubspotSDK::Cms::ExternalOptionsMetaData },
                 api_name: :externalOptionsMetaData

        # @!attribute fulcrum_portal_id
        #
        #   @return [Integer, nil]
        optional :fulcrum_portal_id, Integer, api_name: :fulcrumPortalId

        # @!attribute fulcrum_timestamp
        #
        #   @return [Integer, nil]
        optional :fulcrum_timestamp, Integer, api_name: :fulcrumTimestamp

        # @!attribute janus_group
        #
        #   @return [String, nil]
        optional :janus_group, String, api_name: :janusGroup

        # @!attribute permission
        #
        #   @return [HubspotSDK::Models::Cms::FieldLevelPermission, nil]
        optional :permission, -> { HubspotSDK::Cms::FieldLevelPermission }

        # @!attribute property_definition_source
        #
        #   @return [HubspotSDK::Models::Cms::DefinitionSource, nil]
        optional :property_definition_source,
                 -> { HubspotSDK::Cms::DefinitionSource },
                 api_name: :propertyDefinitionSource

        # @!attribute property_requirements
        #
        #   @return [HubspotSDK::Models::Cms::DefaultRequirements, nil]
        optional :property_requirements,
                 -> { HubspotSDK::Cms::DefaultRequirements },
                 api_name: :propertyRequirements

        # @!attribute rollup_expression
        #
        #   @return [HubspotSDK::Models::Cms::RollupExpression, nil]
        optional :rollup_expression, -> { HubspotSDK::Cms::RollupExpression }, api_name: :rollupExpression

        # @!method initialize(object_type_id:, property:, calculation_expression: nil, calculation_formula: nil, definition_source: nil, extension_data: nil, external_options_meta_data: nil, fulcrum_portal_id: nil, fulcrum_timestamp: nil, janus_group: nil, permission: nil, property_definition_source: nil, property_requirements: nil, rollup_expression: nil)
        #   @param object_type_id [String]
        #
        #   @param property [HubspotSDK::Models::Property] A HubSpot property
        #
        #   @param calculation_expression [HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::TimeBetweenSkipWeekends, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::FormatPhoneNumber, HubspotSDK::Models::Cms::FormatSearchablePhoneNumber, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime]
        #
        #   @param calculation_formula [String]
        #
        #   @param definition_source [HubspotSDK::Models::Cms::PropertyDefinitionSource]
        #
        #   @param extension_data [HubspotSDK::Models::Cms::ExtensionData]
        #
        #   @param external_options_meta_data [HubspotSDK::Models::Cms::ExternalOptionsMetaData]
        #
        #   @param fulcrum_portal_id [Integer]
        #
        #   @param fulcrum_timestamp [Integer]
        #
        #   @param janus_group [String]
        #
        #   @param permission [HubspotSDK::Models::Cms::FieldLevelPermission]
        #
        #   @param property_definition_source [HubspotSDK::Models::Cms::DefinitionSource]
        #
        #   @param property_requirements [HubspotSDK::Models::Cms::DefaultRequirements]
        #
        #   @param rollup_expression [HubspotSDK::Models::Cms::RollupExpression]

        # @see HubspotSDK::Models::Cms::PropertyDefinition#calculation_expression
        module CalculationExpression
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

          variant -> { HubspotSDK::Cms::TimeBetweenSkipWeekends }

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

          variant -> { HubspotSDK::Cms::FormatPhoneNumber }

          variant -> { HubspotSDK::Cms::FormatSearchablePhoneNumber }

          variant -> { HubspotSDK::Cms::AbsoluteValue }

          variant -> { HubspotSDK::Cms::SquareRoot }

          variant -> { HubspotSDK::Cms::Power }

          variant -> { HubspotSDK::Cms::Substring }

          variant -> { HubspotSDK::Cms::Euler }

          variant -> { HubspotSDK::Cms::StringLength }

          variant -> { HubspotSDK::Cms::AddTime }

          variant -> { HubspotSDK::Cms::SubtractTime }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Cms::ConstantBoolean, HubspotSDK::Models::Cms::ConstantNumber, HubspotSDK::Models::Cms::ConstantString, HubspotSDK::Models::Cms::BooleanPropertyVariable, HubspotSDK::Models::Cms::StringPropertyVariable, HubspotSDK::Models::Cms::NumberPropertyVariable, HubspotSDK::Models::Cms::TimestampOfPropertyVariable, HubspotSDK::Models::Cms::BooleanTargetPropertyVariable, HubspotSDK::Models::Cms::StringTargetPropertyVariable, HubspotSDK::Models::Cms::NumberTargetPropertyVariable, HubspotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::AddNumbers, HubspotSDK::Models::Cms::SubtractNumbers, HubspotSDK::Models::Cms::MultiplyNumbers, HubspotSDK::Models::Cms::DivideNumbers, HubspotSDK::Models::Cms::RoundDownNumbers, HubspotSDK::Models::Cms::RoundUpNumbers, HubspotSDK::Models::Cms::RoundNearestNumbers, HubspotSDK::Models::Cms::UpperCase, HubspotSDK::Models::Cms::LowerCase, HubspotSDK::Models::Cms::ConcatStrings, HubspotSDK::Models::Cms::Contains, HubspotSDK::Models::Cms::BeginsWith, HubspotSDK::Models::Cms::NumberToString, HubspotSDK::Models::Cms::ParseNumber, HubspotSDK::Models::Cms::FetchExchangeRate, HubspotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::DatedExchangeRate, HubspotSDK::Models::Cms::PipelineProbability, HubspotSDK::Models::Cms::MaxNumbers, HubspotSDK::Models::Cms::MinNumbers, HubspotSDK::Models::Cms::LessThan, HubspotSDK::Models::Cms::LessThanOrEqual, HubspotSDK::Models::Cms::MoreThan, HubspotSDK::Models::Cms::MoreThanOrEqual, HubspotSDK::Models::Cms::NumberEquals, HubspotSDK::Models::Cms::StringEquals, HubspotSDK::Models::Cms::IsPipelineStageClosed, HubspotSDK::Models::Cms::Not, HubspotSDK::Models::Cms::Date, HubspotSDK::Models::Cms::Month, HubspotSDK::Models::Cms::Year, HubspotSDK::Models::Cms::Now, HubspotSDK::Models::Cms::TimeBetween, HubspotSDK::Models::Cms::TimeBetweenSkipWeekends, HubspotSDK::Models::Cms::PeriodToMonths, HubspotSDK::Models::Cms::PeriodToWeeks, HubspotSDK::Models::Cms::And, HubspotSDK::Models::Cms::Or, HubspotSDK::Models::Cms::Xor, HubspotSDK::Models::Cms::IfString, HubspotSDK::Models::Cms::IfNumber, HubspotSDK::Models::Cms::IfBoolean, HubspotSDK::Models::Cms::IsPresent, HubspotSDK::Models::Cms::HasEmailReply, HubspotSDK::Models::Cms::HasPlainTextEmailReply, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::SetContainsString, HubspotSDK::Models::Cms::IsEngagementType, HubspotSDK::Models::Cms::FormatFullName, HubspotSDK::Models::Cms::FormatPhoneNumber, HubspotSDK::Models::Cms::FormatSearchablePhoneNumber, HubspotSDK::Models::Cms::AbsoluteValue, HubspotSDK::Models::Cms::SquareRoot, HubspotSDK::Models::Cms::Power, HubspotSDK::Models::Cms::Substring, HubspotSDK::Models::Cms::Euler, HubspotSDK::Models::Cms::StringLength, HubspotSDK::Models::Cms::AddTime, HubspotSDK::Models::Cms::SubtractTime)]
        end
      end
    end
  end
end
