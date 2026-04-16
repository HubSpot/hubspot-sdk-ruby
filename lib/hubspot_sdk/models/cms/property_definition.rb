# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class PropertyDefinition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute property
        #   A HubSpot property
        #
        #   @return [HubSpotSDK::Models::Cms::Property]
        required :property, -> { HubSpotSDK::Cms::Property }

        # @!attribute calculation_expression
        #
        #   @return [HubSpotSDK::Models::Cms::ConstantBoolean, HubSpotSDK::Models::Cms::ConstantNumber, HubSpotSDK::Models::Cms::ConstantString, HubSpotSDK::Models::Cms::BooleanPropertyVariable, HubSpotSDK::Models::Cms::StringPropertyVariable, HubSpotSDK::Models::Cms::NumberPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfPropertyVariable, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable, HubSpotSDK::Models::Cms::StringTargetPropertyVariable, HubSpotSDK::Models::Cms::NumberTargetPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubSpotSDK::Models::Cms::AddNumbers, HubSpotSDK::Models::Cms::SubtractNumbers, HubSpotSDK::Models::Cms::MultiplyNumbers, HubSpotSDK::Models::Cms::DivideNumbers, HubSpotSDK::Models::Cms::RoundDownNumbers, HubSpotSDK::Models::Cms::RoundUpNumbers, HubSpotSDK::Models::Cms::RoundNearestNumbers, HubSpotSDK::Models::Cms::UpperCase, HubSpotSDK::Models::Cms::LowerCase, HubSpotSDK::Models::Cms::ConcatStrings, HubSpotSDK::Models::Cms::Contains, HubSpotSDK::Models::Cms::BeginsWith, HubSpotSDK::Models::Cms::NumberToString, HubSpotSDK::Models::Cms::ParseNumber, HubSpotSDK::Models::Cms::FetchExchangeRate, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubSpotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubSpotSDK::Models::Cms::DatedExchangeRate, HubSpotSDK::Models::Cms::PipelineProbability, HubSpotSDK::Models::Cms::MaxNumbers, HubSpotSDK::Models::Cms::MinNumbers, HubSpotSDK::Models::Cms::LessThan, HubSpotSDK::Models::Cms::LessThanOrEqual, HubSpotSDK::Models::Cms::MoreThan, HubSpotSDK::Models::Cms::MoreThanOrEqual, HubSpotSDK::Models::Cms::NumberEquals, HubSpotSDK::Models::Cms::StringEquals, HubSpotSDK::Models::Cms::IsPipelineStageClosed, HubSpotSDK::Models::Cms::Not, HubSpotSDK::Models::Cms::Date, HubSpotSDK::Models::Cms::Month, HubSpotSDK::Models::Cms::Year, HubSpotSDK::Models::Cms::Now, HubSpotSDK::Models::Cms::TimeBetween, HubSpotSDK::Models::Cms::TimeBetweenSkipWeekends, HubSpotSDK::Models::Cms::PeriodToMonths, HubSpotSDK::Models::Cms::PeriodToWeeks, HubSpotSDK::Models::Cms::And, HubSpotSDK::Models::Cms::Or, HubSpotSDK::Models::Cms::Xor, HubSpotSDK::Models::Cms::IfString, HubSpotSDK::Models::Cms::IfNumber, HubSpotSDK::Models::Cms::IfBoolean, HubSpotSDK::Models::Cms::IsPresent, HubSpotSDK::Models::Cms::HasEmailReply, HubSpotSDK::Models::Cms::HasPlainTextEmailReply, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubSpotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubSpotSDK::Models::Cms::SetContainsString, HubSpotSDK::Models::Cms::IsEngagementType, HubSpotSDK::Models::Cms::FormatFullName, HubSpotSDK::Models::Cms::FormatPhoneNumber, HubSpotSDK::Models::Cms::FormatSearchablePhoneNumber, HubSpotSDK::Models::Cms::AbsoluteValue, HubSpotSDK::Models::Cms::SquareRoot, HubSpotSDK::Models::Cms::Power, HubSpotSDK::Models::Cms::Substring, HubSpotSDK::Models::Cms::Euler, HubSpotSDK::Models::Cms::StringLength, HubSpotSDK::Models::Cms::IsBlank, HubSpotSDK::Models::Cms::AddTime, HubSpotSDK::Models::Cms::SubtractTime, nil]
        optional :calculation_expression,
                 union: -> { HubSpotSDK::Cms::PropertyDefinition::CalculationExpression },
                 api_name: :calculationExpression

        # @!attribute calculation_formula
        #
        #   @return [String, nil]
        optional :calculation_formula, String, api_name: :calculationFormula

        # @!attribute definition_source
        #
        #   @return [HubSpotSDK::Models::Cms::PropertyDefinitionSource, nil]
        optional :definition_source,
                 -> {
                   HubSpotSDK::Cms::PropertyDefinitionSource
                 },
                 api_name: :definitionSource

        # @!attribute extension_data
        #
        #   @return [HubSpotSDK::Models::Cms::ExtensionData, nil]
        optional :extension_data, -> { HubSpotSDK::Cms::ExtensionData }, api_name: :extensionData

        # @!attribute external_options_meta_data
        #
        #   @return [HubSpotSDK::Models::Cms::ExternalOptionsMetaData, nil]
        optional :external_options_meta_data,
                 -> { HubSpotSDK::Cms::ExternalOptionsMetaData },
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
        #   @return [HubSpotSDK::Models::Cms::FieldLevelPermission, nil]
        optional :permission, -> { HubSpotSDK::Cms::FieldLevelPermission }

        # @!attribute property_definition_source
        #
        #   @return [HubSpotSDK::Models::Cms::DefinitionSource, nil]
        optional :property_definition_source,
                 -> { HubSpotSDK::Cms::DefinitionSource },
                 api_name: :propertyDefinitionSource

        # @!attribute property_requirements
        #
        #   @return [HubSpotSDK::Models::Cms::DefaultRequirements, nil]
        optional :property_requirements,
                 -> { HubSpotSDK::Cms::DefaultRequirements },
                 api_name: :propertyRequirements

        # @!attribute rollup_expression
        #
        #   @return [HubSpotSDK::Models::Cms::RollupExpression, nil]
        optional :rollup_expression, -> { HubSpotSDK::Cms::RollupExpression }, api_name: :rollupExpression

        # @!method initialize(object_type_id:, property:, calculation_expression: nil, calculation_formula: nil, definition_source: nil, extension_data: nil, external_options_meta_data: nil, fulcrum_portal_id: nil, fulcrum_timestamp: nil, janus_group: nil, permission: nil, property_definition_source: nil, property_requirements: nil, rollup_expression: nil)
        #   @param object_type_id [String]
        #
        #   @param property [HubSpotSDK::Models::Cms::Property] A HubSpot property
        #
        #   @param calculation_expression [HubSpotSDK::Models::Cms::ConstantBoolean, HubSpotSDK::Models::Cms::ConstantNumber, HubSpotSDK::Models::Cms::ConstantString, HubSpotSDK::Models::Cms::BooleanPropertyVariable, HubSpotSDK::Models::Cms::StringPropertyVariable, HubSpotSDK::Models::Cms::NumberPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfPropertyVariable, HubSpotSDK::Models::Cms::BooleanTargetPropertyVariable, HubSpotSDK::Models::Cms::StringTargetPropertyVariable, HubSpotSDK::Models::Cms::NumberTargetPropertyVariable, HubSpotSDK::Models::Cms::TimestampOfTargetPropertyVariable, HubSpotSDK::Models::Cms::AddNumbers, HubSpotSDK::Models::Cms::SubtractNumbers, HubSpotSDK::Models::Cms::MultiplyNumbers, HubSpotSDK::Models::Cms::DivideNumbers, HubSpotSDK::Models::Cms::RoundDownNumbers, HubSpotSDK::Models::Cms::RoundUpNumbers, HubSpotSDK::Models::Cms::RoundNearestNumbers, HubSpotSDK::Models::Cms::UpperCase, HubSpotSDK::Models::Cms::LowerCase, HubSpotSDK::Models::Cms::ConcatStrings, HubSpotSDK::Models::Cms::Contains, HubSpotSDK::Models::Cms::BeginsWith, HubSpotSDK::Models::Cms::NumberToString, HubSpotSDK::Models::Cms::ParseNumber, HubSpotSDK::Models::Cms::FetchExchangeRate, HubSpotSDK::Models::Cms::FetchCurrencyDecimalPlaces, HubSpotSDK::Models::Cms::FetchSingleCurrencyPortalCurrency, HubSpotSDK::Models::Cms::DatedExchangeRate, HubSpotSDK::Models::Cms::PipelineProbability, HubSpotSDK::Models::Cms::MaxNumbers, HubSpotSDK::Models::Cms::MinNumbers, HubSpotSDK::Models::Cms::LessThan, HubSpotSDK::Models::Cms::LessThanOrEqual, HubSpotSDK::Models::Cms::MoreThan, HubSpotSDK::Models::Cms::MoreThanOrEqual, HubSpotSDK::Models::Cms::NumberEquals, HubSpotSDK::Models::Cms::StringEquals, HubSpotSDK::Models::Cms::IsPipelineStageClosed, HubSpotSDK::Models::Cms::Not, HubSpotSDK::Models::Cms::Date, HubSpotSDK::Models::Cms::Month, HubSpotSDK::Models::Cms::Year, HubSpotSDK::Models::Cms::Now, HubSpotSDK::Models::Cms::TimeBetween, HubSpotSDK::Models::Cms::TimeBetweenSkipWeekends, HubSpotSDK::Models::Cms::PeriodToMonths, HubSpotSDK::Models::Cms::PeriodToWeeks, HubSpotSDK::Models::Cms::And, HubSpotSDK::Models::Cms::Or, HubSpotSDK::Models::Cms::Xor, HubSpotSDK::Models::Cms::IfString, HubSpotSDK::Models::Cms::IfNumber, HubSpotSDK::Models::Cms::IfBoolean, HubSpotSDK::Models::Cms::IsPresent, HubSpotSDK::Models::Cms::HasEmailReply, HubSpotSDK::Models::Cms::HasPlainTextEmailReply, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyHTML, HubSpotSDK::Models::Cms::ExtractMostRecentEmailReplyText, HubSpotSDK::Models::Cms::ExtractMostRecentPlainTextEmailReply, HubSpotSDK::Models::Cms::SetContainsString, HubSpotSDK::Models::Cms::IsEngagementType, HubSpotSDK::Models::Cms::FormatFullName, HubSpotSDK::Models::Cms::FormatPhoneNumber, HubSpotSDK::Models::Cms::FormatSearchablePhoneNumber, HubSpotSDK::Models::Cms::AbsoluteValue, HubSpotSDK::Models::Cms::SquareRoot, HubSpotSDK::Models::Cms::Power, HubSpotSDK::Models::Cms::Substring, HubSpotSDK::Models::Cms::Euler, HubSpotSDK::Models::Cms::StringLength, HubSpotSDK::Models::Cms::IsBlank, HubSpotSDK::Models::Cms::AddTime, HubSpotSDK::Models::Cms::SubtractTime]
        #
        #   @param calculation_formula [String]
        #
        #   @param definition_source [HubSpotSDK::Models::Cms::PropertyDefinitionSource]
        #
        #   @param extension_data [HubSpotSDK::Models::Cms::ExtensionData]
        #
        #   @param external_options_meta_data [HubSpotSDK::Models::Cms::ExternalOptionsMetaData]
        #
        #   @param fulcrum_portal_id [Integer]
        #
        #   @param fulcrum_timestamp [Integer]
        #
        #   @param janus_group [String]
        #
        #   @param permission [HubSpotSDK::Models::Cms::FieldLevelPermission]
        #
        #   @param property_definition_source [HubSpotSDK::Models::Cms::DefinitionSource]
        #
        #   @param property_requirements [HubSpotSDK::Models::Cms::DefaultRequirements]
        #
        #   @param rollup_expression [HubSpotSDK::Models::Cms::RollupExpression]

        # @see HubSpotSDK::Models::Cms::PropertyDefinition#calculation_expression
        module CalculationExpression
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
