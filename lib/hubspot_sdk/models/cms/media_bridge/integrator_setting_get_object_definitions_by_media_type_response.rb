# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings#get_object_definitions_by_media_type
        class IntegratorSettingGetObjectDefinitionsByMediaTypeResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute object_type_id
          #
          #   @return [String]
          required :object_type_id, String, api_name: :objectTypeId

          # @!attribute object_type_name
          #
          #   @return [String]
          required :object_type_name, String, api_name: :objectTypeName

          # @!attribute properties
          #
          #   @return [Array<HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property>]
          required :properties,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property] }

          # @!attribute property_groups
          #
          #   @return [Array<HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::PropertyGroup>]
          required :property_groups,
                   -> do
                     HubspotSDK::Internal::Type::ArrayOf[
                       HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::PropertyGroup
                     ]
                   end,
                   api_name: :propertyGroups

          # @!attribute schema
          #
          #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema, nil]
          optional :schema,
                   -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema }

          # @!method initialize(object_type_id:, object_type_name:, properties:, property_groups:, schema: nil)
          #   @param object_type_id [String]
          #   @param object_type_name [String]
          #   @param properties [Array<HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property>]
          #   @param property_groups [Array<HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::PropertyGroup>]
          #   @param schema [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema]

          class Property < HubspotSDK::Internal::Type::BaseModel
            # @!attribute object_type_id
            #
            #   @return [String]
            required :object_type_id, String, api_name: :objectTypeId

            # @!attribute property
            #   Defines a property
            #
            #   @return [HubspotSDK::Models::Property]
            required :property, -> { HubspotSDK::Property }

            # @!attribute calculation_expression
            #
            #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDivideNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeUpperCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLowerCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConcatStrings, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeContains, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBeginsWith, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberToString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeParseNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePipelineProbability, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMaxNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMinNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMonth, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeYear, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNow, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimeBetween, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToMonths, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToWeeks, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAnd, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeOr, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeXor, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPresent, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSetContainsString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsEngagementType, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFormatFullName, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAbsoluteValue, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSquareRoot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePower, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubstring, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeEuler, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringLength, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddTime, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractTime, nil]
            optional :calculation_expression,
                     union: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression },
                     api_name: :calculationExpression

            # @!attribute calculation_formula
            #
            #   @return [String, nil]
            optional :calculation_formula, String, api_name: :calculationFormula

            # @!attribute definition_source
            #
            #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::DefinitionSource, nil]
            optional :definition_source,
                     -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::DefinitionSource },
                     api_name: :definitionSource

            # @!attribute extension_data
            #
            #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData, nil]
            optional :extension_data,
                     -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData },
                     api_name: :extensionData

            # @!attribute external_options_meta_data
            #
            #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExternalOptionsMetaData, nil]
            optional :external_options_meta_data,
                     -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExternalOptionsMetaData },
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
            #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::Permission, nil]
            optional :permission,
                     -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::Permission }

            # @!attribute property_definition_source
            #
            #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyDefinitionSource, nil]
            optional :property_definition_source,
                     -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyDefinitionSource },
                     api_name: :propertyDefinitionSource

            # @!attribute property_requirements
            #
            #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyRequirements, nil]
            optional :property_requirements,
                     -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyRequirements },
                     api_name: :propertyRequirements

            # @!attribute rollup_expression
            #
            #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression, nil]
            optional :rollup_expression,
                     -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression },
                     api_name: :rollupExpression

            # @!method initialize(object_type_id:, property:, calculation_expression: nil, calculation_formula: nil, definition_source: nil, extension_data: nil, external_options_meta_data: nil, fulcrum_portal_id: nil, fulcrum_timestamp: nil, janus_group: nil, permission: nil, property_definition_source: nil, property_requirements: nil, rollup_expression: nil)
            #   @param object_type_id [String]
            #
            #   @param property [HubspotSDK::Models::Property] Defines a property
            #
            #   @param calculation_expression [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDivideNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeUpperCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLowerCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConcatStrings, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeContains, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBeginsWith, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberToString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeParseNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePipelineProbability, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMaxNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMinNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMonth, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeYear, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNow, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimeBetween, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToMonths, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToWeeks, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAnd, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeOr, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeXor, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPresent, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSetContainsString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsEngagementType, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFormatFullName, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAbsoluteValue, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSquareRoot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePower, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubstring, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeEuler, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringLength, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddTime, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractTime]
            #
            #   @param calculation_formula [String]
            #
            #   @param definition_source [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::DefinitionSource]
            #
            #   @param extension_data [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData]
            #
            #   @param external_options_meta_data [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExternalOptionsMetaData]
            #
            #   @param fulcrum_portal_id [Integer]
            #
            #   @param fulcrum_timestamp [Integer]
            #
            #   @param janus_group [String]
            #
            #   @param permission [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::Permission]
            #
            #   @param property_definition_source [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyDefinitionSource]
            #
            #   @param property_requirements [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyRequirements]
            #
            #   @param rollup_expression [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression]

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property#calculation_expression
            module CalculationExpression
              extend HubspotSDK::Internal::Type::Union

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantBoolean }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantNumber }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantString }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDivideNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeUpperCase }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLowerCase }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConcatStrings }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeContains }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBeginsWith }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberToString }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeParseNumber }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePipelineProbability }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMaxNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMinNumbers }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThan }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThan }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberEquals }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringEquals }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNot }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDate }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMonth }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeYear }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNow }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimeBetween }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToMonths }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToWeeks }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAnd }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeOr }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeXor }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfString }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfNumber }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfBoolean }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPresent }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasEmailReply }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSetContainsString }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsEngagementType }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFormatFullName }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAbsoluteValue }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSquareRoot }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePower }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubstring }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeEuler }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringLength }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddTime }

              variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractTime }

              class CmsMediabridgeConstantBoolean < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantBoolean#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  CONSTANT_BOOLEAN = :CONSTANT_BOOLEAN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeConstantNumber < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantNumber#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  CONSTANT_NUMBER = :CONSTANT_NUMBER

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeConstantString < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantString::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantString::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantString::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantString#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  CONSTANT_STRING = :CONSTANT_STRING

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeBooleanPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  BOOLEAN_PROPERTY_VARIABLE = :BOOLEAN_PROPERTY_VARIABLE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeStringPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  STRING_PROPERTY_VARIABLE = :STRING_PROPERTY_VARIABLE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeNumberPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  NUMBER_PROPERTY_VARIABLE = :NUMBER_PROPERTY_VARIABLE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeTimestampOfPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  TIMESTAMP_OF_PROPERTY_VARIABLE = :TIMESTAMP_OF_PROPERTY_VARIABLE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeBooleanTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  BOOLEAN_TARGET_PROPERTY_VARIABLE = :BOOLEAN_TARGET_PROPERTY_VARIABLE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeStringTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  STRING_TARGET_PROPERTY_VARIABLE = :STRING_TARGET_PROPERTY_VARIABLE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeNumberTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  NUMBER_TARGET_PROPERTY_VARIABLE = :NUMBER_TARGET_PROPERTY_VARIABLE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeTimestampOfTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  TIMESTAMP_OF_TARGET_PROPERTY_VARIABLE = :TIMESTAMP_OF_TARGET_PROPERTY_VARIABLE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeAddNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  ADD_NUMBERS = :ADD_NUMBERS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeSubtractNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  SUBTRACT_NUMBERS = :SUBTRACT_NUMBERS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeMultiplyNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  MULTIPLY_NUMBERS = :MULTIPLY_NUMBERS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeDivideNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDivideNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  DIVIDE_NUMBERS = :DIVIDE_NUMBERS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeRoundDownNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  ROUND_DOWN = :ROUND_DOWN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeRoundUpNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  ROUND_UP = :ROUND_UP

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeRoundNearestNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  ROUND_NEAREST = :ROUND_NEAREST

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeUpperCase < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeUpperCase#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  UPPER_CASE = :UPPER_CASE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeLowerCase < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLowerCase#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  LOWER_CASE = :LOWER_CASE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeConcatStrings < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConcatStrings#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  CONCAT_STRINGS = :CONCAT_STRINGS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeContains < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeContains::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeContains::Operator }

                # @!attribute string_to_check
                #
                #   @return [Object]
                required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeContains::Operator]
                #   @param string_to_check [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeContains#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  CONTAINS = :CONTAINS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeBeginsWith < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator }

                # @!attribute string_to_check
                #
                #   @return [Object]
                required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator]
                #   @param string_to_check [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBeginsWith#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  BEGINS_WITH = :BEGINS_WITH

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeNumberToString < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberToString#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  NUMBER_TO_STRING = :NUMBER_TO_STRING

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeParseNumber < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeParseNumber#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  PARSE_NUMBER = :PARSE_NUMBER

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeFetchExchangeRate < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  FETCH_EXCHANGE_RATE = :FETCH_EXCHANGE_RATE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeFetchCurrencyDecimalPlaces < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  FETCH_CURRENCY_DECIMAL_PLACES = :FETCH_CURRENCY_DECIMAL_PLACES

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeFetchSingleCurrencyPortalCurrency < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY = :FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeDatedExchangeRate < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  DATED_EXCHANGE_RATE = :DATED_EXCHANGE_RATE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgePipelineProbability < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePipelineProbability#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  PIPELINE_PROBABILITY = :PIPELINE_PROBABILITY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeMaxNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMaxNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  MAX_NUMBERS = :MAX_NUMBERS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeMinNumbers < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMinNumbers#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  MIN_NUMBERS = :MIN_NUMBERS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeLessThan < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThan::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThan::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThan::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThan#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  LESS_THAN = :LESS_THAN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeLessThanOrEqual < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  LESS_THAN_OR_EQUAL = :LESS_THAN_OR_EQUAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeMoreThan < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThan#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  MORE_THAN = :MORE_THAN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeMoreThanOrEqual < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  MORE_THAN_OR_EQUAL = :MORE_THAN_OR_EQUAL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeNumberEquals < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberEquals#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  NUMBER_EQUALS = :NUMBER_EQUALS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeStringEquals < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringEquals#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  STRING_EQUALS = :STRING_EQUALS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeIsPipelineStageClosed < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  IS_PIPELINE_STAGE_CLOSED = :IS_PIPELINE_STAGE_CLOSED

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeNot < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNot::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNot::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNot::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNot#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  NOT = :NOT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeDate < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDate::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDate::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDate::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDate#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  DATE = :DATE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeMonth < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMonth::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMonth::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMonth::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMonth#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  MONTH = :MONTH

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeYear < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeYear::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeYear::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeYear::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeYear#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  YEAR = :YEAR

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeNow < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNow::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNow::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNow::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNow#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  NOW = :NOW

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeTimeBetween < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimeBetween#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  TIME_BETWEEN = :TIME_BETWEEN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgePeriodToMonths < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToMonths#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  PERIOD_TO_MONTHS = :PERIOD_TO_MONTHS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgePeriodToWeeks < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToWeeks#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  PERIOD_TO_WEEKS = :PERIOD_TO_WEEKS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeAnd < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAnd::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAnd::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAnd::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAnd#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  AND = :AND

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeOr < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeOr::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeOr::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeOr::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeOr#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  OR = :OR

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeXor < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeXor::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeXor::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeXor::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeXor#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  XOR = :XOR

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeIfString < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute if_expression
                #
                #   @return [Object]
                required :if_expression, HubspotSDK::Internal::Type::Unknown, api_name: :ifExpression

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfString::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfString::Operator }

                # @!attribute else_expression
                #
                #   @return [Object, nil]
                optional :else_expression, HubspotSDK::Internal::Type::Unknown, api_name: :elseExpression

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param if_expression [Object]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfString::Operator]
                #   @param else_expression [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfString#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  IF_STRING = :IF_STRING

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeIfNumber < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute if_expression
                #
                #   @return [Object]
                required :if_expression, HubspotSDK::Internal::Type::Unknown, api_name: :ifExpression

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator }

                # @!attribute else_expression
                #
                #   @return [Object, nil]
                optional :else_expression, HubspotSDK::Internal::Type::Unknown, api_name: :elseExpression

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param if_expression [Object]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator]
                #   @param else_expression [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfNumber#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  IF_NUMBER = :IF_NUMBER

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeIfBoolean < HubspotSDK::Internal::Type::BaseModel
                # @!attribute enclosed_in_parentheses
                #
                #   @return [Boolean]
                required :enclosed_in_parentheses,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :enclosedInParentheses

                # @!attribute if_expression
                #
                #   @return [Object]
                required :if_expression, HubspotSDK::Internal::Type::Unknown, api_name: :ifExpression

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator }

                # @!attribute else_expression
                #
                #   @return [Object, nil]
                optional :else_expression, HubspotSDK::Internal::Type::Unknown, api_name: :elseExpression

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
                #   @param enclosed_in_parentheses [Boolean]
                #   @param if_expression [Object]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator]
                #   @param else_expression [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfBoolean#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  IF_BOOLEAN = :IF_BOOLEAN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeIsPresent < HubspotSDK::Internal::Type::BaseModel
                # @!attribute expression_to_evaluate
                #
                #   @return [Object]
                required :expression_to_evaluate,
                         HubspotSDK::Internal::Type::Unknown,
                         api_name: :expressionToEvaluate

                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(expression_to_evaluate:, operator:, inputs: nil, property_name: nil, value: nil)
                #   @param expression_to_evaluate [Object]
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPresent#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  IS_PRESENT = :IS_PRESENT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeHasEmailReply < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasEmailReply#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  HAS_EMAIL_REPLY = :HAS_EMAIL_REPLY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeHasPlainTextEmailReply < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  HAS_PLAIN_TEXT_EMAIL_REPLY = :HAS_PLAIN_TEXT_EMAIL_REPLY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeExtractMostRecentEmailReplyHTML < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML = :EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeExtractMostRecentEmailReplyText < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT = :EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeExtractMostRecentPlainTextEmailReply < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  EXTRACT_MOST_RECENT_PLAIN_TEXT_EMAIL_REPLY = :EXTRACT_MOST_RECENT_PLAIN_TEXT_EMAIL_REPLY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeSetContainsString < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator }

                # @!attribute string_to_check
                #
                #   @return [Object]
                required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator]
                #   @param string_to_check [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSetContainsString#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  SET_CONTAINS_STRING = :SET_CONTAINS_STRING

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeIsEngagementType < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Boolean, nil]
                optional :value, HubspotSDK::Internal::Type::Boolean

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Boolean]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsEngagementType#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  IS_ENGAGEMENT_TYPE = :IS_ENGAGEMENT_TYPE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeFormatFullName < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFormatFullName#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  FORMAT_FULL_NAME = :FORMAT_FULL_NAME

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeAbsoluteValue < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAbsoluteValue#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  ABSOLUTE_VALUE = :ABSOLUTE_VALUE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeSquareRoot < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSquareRoot#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  SQUARE_ROOT = :SQUARE_ROOT

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgePower < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePower::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePower::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePower::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePower#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  POWER = :POWER

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeSubstring < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubstring::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubstring::Operator }

                # @!attribute string_to_check
                #
                #   @return [Object]
                required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubstring::Operator]
                #   @param string_to_check [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [String]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubstring#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  SUBSTRING = :SUBSTRING

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeEuler < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeEuler::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeEuler::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeEuler::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeEuler#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  EULER = :EULER

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeStringLength < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringLength::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringLength::Operator }

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringLength::Operator]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringLength#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  STRING_LENGTH = :STRING_LENGTH

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeAddTime < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddTime::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddTime::Operator }

                # @!attribute string_to_check
                #
                #   @return [Object]
                required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddTime::Operator]
                #   @param string_to_check [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddTime#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  ADD_TIME = :ADD_TIME

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class CmsMediabridgeSubtractTime < HubspotSDK::Internal::Type::BaseModel
                # @!attribute operator
                #
                #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator]
                required :operator,
                         enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator }

                # @!attribute string_to_check
                #
                #   @return [Object]
                required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                # @!attribute inputs
                #
                #   @return [Array<Object>, nil]
                optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                # @!attribute property_name
                #
                #   @return [String, nil]
                optional :property_name, String, api_name: :propertyName

                # @!attribute value
                #
                #   @return [Float, nil]
                optional :value, Float

                # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator]
                #   @param string_to_check [Object]
                #   @param inputs [Array<Object>]
                #   @param property_name [String]
                #   @param value [Float]

                # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractTime#operator
                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  SUBTRACT_TIME = :SUBTRACT_TIME

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConstantString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDivideNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeUpperCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLowerCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeConcatStrings, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeContains, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeBeginsWith, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberToString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeParseNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePipelineProbability, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMaxNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMinNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNumberEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeDate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeMonth, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeYear, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeNow, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeTimeBetween, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToMonths, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePeriodToWeeks, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAnd, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeOr, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeXor, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIfBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsPresent, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSetContainsString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeIsEngagementType, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeFormatFullName, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAbsoluteValue, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSquareRoot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgePower, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubstring, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeEuler, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeStringLength, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeAddTime, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::CalculationExpression::CmsMediabridgeSubtractTime)]
            end

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property#definition_source
            class DefinitionSource < HubspotSDK::Internal::Type::BaseModel
              # @!attribute type
              #
              #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::DefinitionSource::Type]
              required :type,
                       enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::DefinitionSource::Type }

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(type:, name: nil)
              #   @param type [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::DefinitionSource::Type]
              #   @param name [String]

              # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::DefinitionSource#type
              module Type
                extend HubspotSDK::Internal::Type::Enum

                GLOBAL = :GLOBAL
                OBJECT_TYPE = :OBJECT_TYPE
                HAVEN_BRANCH = :HAVEN_BRANCH
                PORTAL = :PORTAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property#extension_data
            class ExtensionData < HubspotSDK::Internal::Type::BaseModel
              # @!attribute extension_status_map
              #
              #   @return [Hash{Symbol=>String}]
              required :extension_status_map,
                       HubspotSDK::Internal::Type::HashOf[String],
                       api_name: :extensionStatusMap

              # @!attribute tags
              #
              #   @return [Array<String>]
              required :tags, HubspotSDK::Internal::Type::ArrayOf[String]

              # @!attribute case_change_test_extension_data
              #
              #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::CaseChangeTestExtensionData, nil]
              optional :case_change_test_extension_data,
                       -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::CaseChangeTestExtensionData },
                       api_name: :caseChangeTestExtensionData

              # @!attribute option_decorators_extension_data
              #
              #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::OptionDecoratorsExtensionData, nil]
              optional :option_decorators_extension_data,
                       -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::OptionDecoratorsExtensionData },
                       api_name: :optionDecoratorsExtensionData

              # @!attribute required_properties_extension_data
              #
              #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::RequiredPropertiesExtensionData, nil]
              optional :required_properties_extension_data,
                       -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::RequiredPropertiesExtensionData },
                       api_name: :requiredPropertiesExtensionData

              # @!attribute soft_required_properties_extension_data
              #
              #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::SoftRequiredPropertiesExtensionData, nil]
              optional :soft_required_properties_extension_data,
                       -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::SoftRequiredPropertiesExtensionData },
                       api_name: :softRequiredPropertiesExtensionData

              # @!method initialize(extension_status_map:, tags:, case_change_test_extension_data: nil, option_decorators_extension_data: nil, required_properties_extension_data: nil, soft_required_properties_extension_data: nil)
              #   @param extension_status_map [Hash{Symbol=>String}]
              #   @param tags [Array<String>]
              #   @param case_change_test_extension_data [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::CaseChangeTestExtensionData]
              #   @param option_decorators_extension_data [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::OptionDecoratorsExtensionData]
              #   @param required_properties_extension_data [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::RequiredPropertiesExtensionData]
              #   @param soft_required_properties_extension_data [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::SoftRequiredPropertiesExtensionData]

              # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData#case_change_test_extension_data
              class CaseChangeTestExtensionData < HubspotSDK::Internal::Type::BaseModel
                # @!attribute mood
                #
                #   @return [String]
                required :mood, String

                # @!method initialize(mood:)
                #   @param mood [String]
              end

              # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData#option_decorators_extension_data
              class OptionDecoratorsExtensionData < HubspotSDK::Internal::Type::BaseModel
                # @!attribute option_decorators
                #
                #   @return [Hash{Symbol=>HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::OptionDecoratorsExtensionData::OptionDecorator}]
                required :option_decorators,
                         -> do
                           HubspotSDK::Internal::Type::HashOf[
                             HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::OptionDecoratorsExtensionData::OptionDecorator
                           ]
                         end,
                         api_name: :optionDecorators

                # @!attribute option_decorator_style
                #
                #   @return [String]
                required :option_decorator_style, String, api_name: :optionDecoratorStyle

                # @!method initialize(option_decorators:, option_decorator_style:)
                #   @param option_decorators [Hash{Symbol=>HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData::OptionDecoratorsExtensionData::OptionDecorator}]
                #   @param option_decorator_style [String]

                class OptionDecorator < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute color
                  #
                  #   @return [String]
                  required :color, String

                  # @!method initialize(color:)
                  #   @param color [String]
                end
              end

              # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData#required_properties_extension_data
              class RequiredPropertiesExtensionData < HubspotSDK::Internal::Type::BaseModel
                # @!attribute is_required_property
                #
                #   @return [Boolean]
                required :is_required_property,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :isRequiredProperty

                # @!method initialize(is_required_property:)
                #   @param is_required_property [Boolean]
              end

              # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExtensionData#soft_required_properties_extension_data
              class SoftRequiredPropertiesExtensionData < HubspotSDK::Internal::Type::BaseModel
                # @!attribute is_soft_required_property
                #
                #   @return [Boolean]
                required :is_soft_required_property,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :isSoftRequiredProperty

                # @!method initialize(is_soft_required_property:)
                #   @param is_soft_required_property [Boolean]
              end
            end

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property#external_options_meta_data
            class ExternalOptionsMetaData < HubspotSDK::Internal::Type::BaseModel
              # @!attribute filter
              #
              #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExternalOptionsMetaData::Filter, nil]
              optional :filter,
                       -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExternalOptionsMetaData::Filter }

              # @!attribute related_object_type_id
              #
              #   @return [String, nil]
              optional :related_object_type_id, String, api_name: :relatedObjectTypeId

              # @!method initialize(filter: nil, related_object_type_id: nil)
              #   @param filter [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExternalOptionsMetaData::Filter]
              #   @param related_object_type_id [String]

              # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::ExternalOptionsMetaData#filter
              class Filter < HubspotSDK::Internal::Type::BaseModel
                # @!attribute include_unconfirmed_users
                #
                #   @return [Boolean]
                required :include_unconfirmed_users,
                         HubspotSDK::Internal::Type::Boolean,
                         api_name: :includeUnconfirmedUsers

                # @!attribute pipeline_ids
                #
                #   @return [Array<String>]
                required :pipeline_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :pipelineIds

                # @!method initialize(include_unconfirmed_users:, pipeline_ids:)
                #   @param include_unconfirmed_users [Boolean]
                #   @param pipeline_ids [Array<String>]
              end
            end

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property#permission
            class Permission < HubspotSDK::Internal::Type::BaseModel
              # @!attribute access_level
              #
              #   @return [String]
              required :access_level, String, api_name: :accessLevel

              # @!method initialize(access_level:)
              #   @param access_level [String]
            end

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property#property_definition_source
            class PropertyDefinitionSource < HubspotSDK::Internal::Type::BaseModel
              # @!attribute type
              #
              #   @return [String]
              required :type, String

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(type:, name: nil)
              #   @param type [String]
              #   @param name [String]
            end

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property#property_requirements
            class PropertyRequirements < HubspotSDK::Internal::Type::BaseModel
              # @!attribute gates
              #
              #   @return [Array<String>]
              required :gates, HubspotSDK::Internal::Type::ArrayOf[String]

              # @!attribute operator
              #
              #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyRequirements::Operator]
              required :operator,
                       enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyRequirements::Operator }

              # @!attribute scope_names
              #
              #   @return [Array<String>]
              required :scope_names, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :scopeNames

              # @!attribute settings
              #
              #   @return [Array<String>]
              required :settings, HubspotSDK::Internal::Type::ArrayOf[String]

              # @!method initialize(gates:, operator:, scope_names:, settings:)
              #   @param gates [Array<String>]
              #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyRequirements::Operator]
              #   @param scope_names [Array<String>]
              #   @param settings [Array<String>]

              # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::PropertyRequirements#operator
              module Operator
                extend HubspotSDK::Internal::Type::Enum

                AND = :AND
                OR = :OR

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property#rollup_expression
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
              #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime, nil]
              optional :conditional_expression,
                       union: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression },
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
              #   @param conditional_expression [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime]
              #   @param conditional_formula [String]
              #   @param empty_rollup_value [String]
              #   @param source_compare_by_property_name [String]

              # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression#conditional_expression
              module ConditionalExpression
                extend HubspotSDK::Internal::Type::Union

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime }

                variant -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime }

                class CmsMediabridgeConstantBoolean < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    CONSTANT_BOOLEAN = :CONSTANT_BOOLEAN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeConstantNumber < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    CONSTANT_NUMBER = :CONSTANT_NUMBER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeConstantString < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    CONSTANT_STRING = :CONSTANT_STRING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeBooleanPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    BOOLEAN_PROPERTY_VARIABLE = :BOOLEAN_PROPERTY_VARIABLE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeStringPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    STRING_PROPERTY_VARIABLE = :STRING_PROPERTY_VARIABLE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeNumberPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    NUMBER_PROPERTY_VARIABLE = :NUMBER_PROPERTY_VARIABLE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeTimestampOfPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TIMESTAMP_OF_PROPERTY_VARIABLE = :TIMESTAMP_OF_PROPERTY_VARIABLE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeBooleanTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    BOOLEAN_TARGET_PROPERTY_VARIABLE = :BOOLEAN_TARGET_PROPERTY_VARIABLE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeStringTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    STRING_TARGET_PROPERTY_VARIABLE = :STRING_TARGET_PROPERTY_VARIABLE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeNumberTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    NUMBER_TARGET_PROPERTY_VARIABLE = :NUMBER_TARGET_PROPERTY_VARIABLE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeTimestampOfTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TIMESTAMP_OF_TARGET_PROPERTY_VARIABLE = :TIMESTAMP_OF_TARGET_PROPERTY_VARIABLE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeAddNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    ADD_NUMBERS = :ADD_NUMBERS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeSubtractNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    SUBTRACT_NUMBERS = :SUBTRACT_NUMBERS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeMultiplyNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    MULTIPLY_NUMBERS = :MULTIPLY_NUMBERS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeDivideNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    DIVIDE_NUMBERS = :DIVIDE_NUMBERS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeRoundDownNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    ROUND_DOWN = :ROUND_DOWN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeRoundUpNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    ROUND_UP = :ROUND_UP

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeRoundNearestNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    ROUND_NEAREST = :ROUND_NEAREST

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeUpperCase < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    UPPER_CASE = :UPPER_CASE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeLowerCase < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    LOWER_CASE = :LOWER_CASE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeConcatStrings < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    CONCAT_STRINGS = :CONCAT_STRINGS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeContains < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator }

                  # @!attribute string_to_check
                  #
                  #   @return [Object]
                  required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator]
                  #   @param string_to_check [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    CONTAINS = :CONTAINS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeBeginsWith < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator }

                  # @!attribute string_to_check
                  #
                  #   @return [Object]
                  required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator]
                  #   @param string_to_check [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    BEGINS_WITH = :BEGINS_WITH

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeNumberToString < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    NUMBER_TO_STRING = :NUMBER_TO_STRING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeParseNumber < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    PARSE_NUMBER = :PARSE_NUMBER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeFetchExchangeRate < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    FETCH_EXCHANGE_RATE = :FETCH_EXCHANGE_RATE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeFetchCurrencyDecimalPlaces < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    FETCH_CURRENCY_DECIMAL_PLACES = :FETCH_CURRENCY_DECIMAL_PLACES

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeFetchSingleCurrencyPortalCurrency < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY = :FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeDatedExchangeRate < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    DATED_EXCHANGE_RATE = :DATED_EXCHANGE_RATE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgePipelineProbability < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    PIPELINE_PROBABILITY = :PIPELINE_PROBABILITY

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeMaxNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    MAX_NUMBERS = :MAX_NUMBERS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeMinNumbers < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    MIN_NUMBERS = :MIN_NUMBERS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeLessThan < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    LESS_THAN = :LESS_THAN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeLessThanOrEqual < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    LESS_THAN_OR_EQUAL = :LESS_THAN_OR_EQUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeMoreThan < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    MORE_THAN = :MORE_THAN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeMoreThanOrEqual < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    MORE_THAN_OR_EQUAL = :MORE_THAN_OR_EQUAL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeNumberEquals < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    NUMBER_EQUALS = :NUMBER_EQUALS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeStringEquals < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    STRING_EQUALS = :STRING_EQUALS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeIsPipelineStageClosed < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_PIPELINE_STAGE_CLOSED = :IS_PIPELINE_STAGE_CLOSED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeNot < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    NOT = :NOT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeDate < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    DATE = :DATE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeMonth < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    MONTH = :MONTH

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeYear < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    YEAR = :YEAR

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeNow < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    NOW = :NOW

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeTimeBetween < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TIME_BETWEEN = :TIME_BETWEEN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgePeriodToMonths < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    PERIOD_TO_MONTHS = :PERIOD_TO_MONTHS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgePeriodToWeeks < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    PERIOD_TO_WEEKS = :PERIOD_TO_WEEKS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeAnd < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    AND = :AND

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeOr < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    OR = :OR

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeXor < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(enclosed_in_parentheses:, operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    XOR = :XOR

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeIfString < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute if_expression
                  #
                  #   @return [Object]
                  required :if_expression, HubspotSDK::Internal::Type::Unknown, api_name: :ifExpression

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator }

                  # @!attribute else_expression
                  #
                  #   @return [Object, nil]
                  optional :else_expression, HubspotSDK::Internal::Type::Unknown, api_name: :elseExpression

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param if_expression [Object]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator]
                  #   @param else_expression [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IF_STRING = :IF_STRING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeIfNumber < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute if_expression
                  #
                  #   @return [Object]
                  required :if_expression, HubspotSDK::Internal::Type::Unknown, api_name: :ifExpression

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator }

                  # @!attribute else_expression
                  #
                  #   @return [Object, nil]
                  optional :else_expression, HubspotSDK::Internal::Type::Unknown, api_name: :elseExpression

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param if_expression [Object]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator]
                  #   @param else_expression [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IF_NUMBER = :IF_NUMBER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeIfBoolean < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute enclosed_in_parentheses
                  #
                  #   @return [Boolean]
                  required :enclosed_in_parentheses,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :enclosedInParentheses

                  # @!attribute if_expression
                  #
                  #   @return [Object]
                  required :if_expression, HubspotSDK::Internal::Type::Unknown, api_name: :ifExpression

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator }

                  # @!attribute else_expression
                  #
                  #   @return [Object, nil]
                  optional :else_expression, HubspotSDK::Internal::Type::Unknown, api_name: :elseExpression

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(enclosed_in_parentheses:, if_expression:, operator:, else_expression: nil, inputs: nil, property_name: nil, value: nil)
                  #   @param enclosed_in_parentheses [Boolean]
                  #   @param if_expression [Object]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator]
                  #   @param else_expression [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IF_BOOLEAN = :IF_BOOLEAN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeIsPresent < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute expression_to_evaluate
                  #
                  #   @return [Object]
                  required :expression_to_evaluate,
                           HubspotSDK::Internal::Type::Unknown,
                           api_name: :expressionToEvaluate

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(expression_to_evaluate:, operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param expression_to_evaluate [Object]
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_PRESENT = :IS_PRESENT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeHasEmailReply < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    HAS_EMAIL_REPLY = :HAS_EMAIL_REPLY

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeHasPlainTextEmailReply < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    HAS_PLAIN_TEXT_EMAIL_REPLY = :HAS_PLAIN_TEXT_EMAIL_REPLY

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeExtractMostRecentEmailReplyHTML < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML = :EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeExtractMostRecentEmailReplyText < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT = :EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeExtractMostRecentPlainTextEmailReply < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    EXTRACT_MOST_RECENT_PLAIN_TEXT_EMAIL_REPLY = :EXTRACT_MOST_RECENT_PLAIN_TEXT_EMAIL_REPLY

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeSetContainsString < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator }

                  # @!attribute string_to_check
                  #
                  #   @return [Object]
                  required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator]
                  #   @param string_to_check [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    SET_CONTAINS_STRING = :SET_CONTAINS_STRING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeIsEngagementType < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Boolean, nil]
                  optional :value, HubspotSDK::Internal::Type::Boolean

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Boolean]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_ENGAGEMENT_TYPE = :IS_ENGAGEMENT_TYPE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeFormatFullName < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    FORMAT_FULL_NAME = :FORMAT_FULL_NAME

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeAbsoluteValue < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    ABSOLUTE_VALUE = :ABSOLUTE_VALUE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeSquareRoot < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    SQUARE_ROOT = :SQUARE_ROOT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgePower < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    POWER = :POWER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeSubstring < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator }

                  # @!attribute string_to_check
                  #
                  #   @return [Object]
                  required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [String, nil]
                  optional :value, String

                  # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator]
                  #   @param string_to_check [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [String]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    SUBSTRING = :SUBSTRING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeEuler < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    EULER = :EULER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeStringLength < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator }

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    STRING_LENGTH = :STRING_LENGTH

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeAddTime < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator }

                  # @!attribute string_to_check
                  #
                  #   @return [Object]
                  required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator]
                  #   @param string_to_check [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    ADD_TIME = :ADD_TIME

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class CmsMediabridgeSubtractTime < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator }

                  # @!attribute string_to_check
                  #
                  #   @return [Object]
                  required :string_to_check, HubspotSDK::Internal::Type::Unknown, api_name: :stringToCheck

                  # @!attribute inputs
                  #
                  #   @return [Array<Object>, nil]
                  optional :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

                  # @!attribute property_name
                  #
                  #   @return [String, nil]
                  optional :property_name, String, api_name: :propertyName

                  # @!attribute value
                  #
                  #   @return [Float, nil]
                  optional :value, Float

                  # @!method initialize(operator:, string_to_check:, inputs: nil, property_name: nil, value: nil)
                  #   @param operator [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator]
                  #   @param string_to_check [Object]
                  #   @param inputs [Array<Object>]
                  #   @param property_name [String]
                  #   @param value [Float]

                  # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    SUBTRACT_TIME = :SUBTRACT_TIME

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime)]
              end
            end
          end

          class PropertyGroup < HubspotSDK::Internal::Type::BaseModel
            # @!attribute display_name
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute display_order
            #
            #   @return [Integer]
            required :display_order, Integer, api_name: :displayOrder

            # @!attribute fulcrum_portal_id
            #
            #   @return [Integer]
            required :fulcrum_portal_id, Integer, api_name: :fulcrumPortalId

            # @!attribute fulcrum_timestamp
            #
            #   @return [Integer]
            required :fulcrum_timestamp, Integer, api_name: :fulcrumTimestamp

            # @!attribute hubspot_defined
            #
            #   @return [Boolean]
            required :hubspot_defined, HubspotSDK::Internal::Type::Boolean, api_name: :hubspotDefined

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!method initialize(display_name:, display_order:, fulcrum_portal_id:, fulcrum_timestamp:, hubspot_defined:, name:)
            #   @param display_name [String]
            #   @param display_order [Integer]
            #   @param fulcrum_portal_id [Integer]
            #   @param fulcrum_timestamp [Integer]
            #   @param hubspot_defined [Boolean]
            #   @param name [String]
          end

          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse#schema
          class Schema < HubspotSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer]
            required :id, Integer

            # @!attribute allows_sensitive_properties
            #
            #   @return [Boolean]
            required :allows_sensitive_properties,
                     HubspotSDK::Internal::Type::Boolean,
                     api_name: :allowsSensitiveProperties

            # @!attribute create_date_property_name
            #
            #   @return [String]
            required :create_date_property_name, String, api_name: :createDatePropertyName

            # @!attribute default_search_property_names
            #
            #   @return [Array<String>]
            required :default_search_property_names,
                     HubspotSDK::Internal::Type::ArrayOf[String],
                     api_name: :defaultSearchPropertyNames

            # @!attribute deleted
            #
            #   @return [Boolean]
            required :deleted, HubspotSDK::Internal::Type::Boolean

            # @!attribute fully_qualified_name
            #
            #   @return [String]
            required :fully_qualified_name, String, api_name: :fullyQualifiedName

            # @!attribute has_custom_properties
            #
            #   @return [Boolean]
            required :has_custom_properties,
                     HubspotSDK::Internal::Type::Boolean,
                     api_name: :hasCustomProperties

            # @!attribute has_default_properties
            #
            #   @return [Boolean]
            required :has_default_properties,
                     HubspotSDK::Internal::Type::Boolean,
                     api_name: :hasDefaultProperties

            # @!attribute has_external_object_ids
            #
            #   @return [Boolean]
            required :has_external_object_ids,
                     HubspotSDK::Internal::Type::Boolean,
                     api_name: :hasExternalObjectIds

            # @!attribute has_owners
            #
            #   @return [Boolean]
            required :has_owners, HubspotSDK::Internal::Type::Boolean, api_name: :hasOwners

            # @!attribute has_pipelines
            #
            #   @return [Boolean]
            required :has_pipelines, HubspotSDK::Internal::Type::Boolean, api_name: :hasPipelines

            # @!attribute indexed_for_filters_and_reports
            #
            #   @return [Boolean]
            required :indexed_for_filters_and_reports,
                     HubspotSDK::Internal::Type::Boolean,
                     api_name: :indexedForFiltersAndReports

            # @!attribute last_modified_property_name
            #
            #   @return [String]
            required :last_modified_property_name, String, api_name: :lastModifiedPropertyName

            # @!attribute meta_type
            #
            #   @return [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema::MetaType]
            required :meta_type,
                     enum: -> { HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema::MetaType },
                     api_name: :metaType

            # @!attribute meta_type_id
            #
            #   @return [Integer]
            required :meta_type_id, Integer, api_name: :metaTypeId

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute object_type_id
            #
            #   @return [String]
            required :object_type_id, String, api_name: :objectTypeId

            # @!attribute permissioning_type
            #
            #   @return [String]
            required :permissioning_type, String, api_name: :permissioningType

            # @!attribute pipeline_property_name
            #
            #   @return [String]
            required :pipeline_property_name, String, api_name: :pipelinePropertyName

            # @!attribute pipeline_stage_property_name
            #
            #   @return [String]
            required :pipeline_stage_property_name, String, api_name: :pipelineStagePropertyName

            # @!attribute required_properties
            #
            #   @return [Array<String>]
            required :required_properties,
                     HubspotSDK::Internal::Type::ArrayOf[String],
                     api_name: :requiredProperties

            # @!attribute restorable
            #
            #   @return [Boolean]
            required :restorable, HubspotSDK::Internal::Type::Boolean

            # @!attribute scope_mappings
            #
            #   @return [Array<HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema::ScopeMapping>]
            required :scope_mappings,
                     -> do
                       HubspotSDK::Internal::Type::ArrayOf[
                         HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema::ScopeMapping
                       ]
                     end,
                     api_name: :scopeMappings

            # @!attribute secondary_display_label_property_names
            #
            #   @return [Array<String>]
            required :secondary_display_label_property_names,
                     HubspotSDK::Internal::Type::ArrayOf[String],
                     api_name: :secondaryDisplayLabelPropertyNames

            # @!attribute access_scope_name
            #
            #   @return [String, nil]
            optional :access_scope_name, String, api_name: :accessScopeName

            # @!attribute created_at
            #
            #   @return [Integer, nil]
            optional :created_at, Integer, api_name: :createdAt

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute integration_app_id
            #
            #   @return [Integer, nil]
            optional :integration_app_id, Integer, api_name: :integrationAppId

            # @!attribute janus_group
            #
            #   @return [String, nil]
            optional :janus_group, String, api_name: :janusGroup

            # @!attribute owner_portal_id
            #
            #   @return [Integer, nil]
            optional :owner_portal_id, Integer, api_name: :ownerPortalId

            # @!attribute pipeline_close_date_property_name
            #
            #   @return [String, nil]
            optional :pipeline_close_date_property_name, String, api_name: :pipelineCloseDatePropertyName

            # @!attribute pipeline_time_to_close_property_name
            #
            #   @return [String, nil]
            optional :pipeline_time_to_close_property_name, String, api_name: :pipelineTimeToClosePropertyName

            # @!attribute plural_form
            #
            #   @return [String, nil]
            optional :plural_form, String, api_name: :pluralForm

            # @!attribute primary_display_label_property_name
            #
            #   @return [String, nil]
            optional :primary_display_label_property_name, String, api_name: :primaryDisplayLabelPropertyName

            # @!attribute read_scope_name
            #
            #   @return [String, nil]
            optional :read_scope_name, String, api_name: :readScopeName

            # @!attribute singular_form
            #
            #   @return [String, nil]
            optional :singular_form, String, api_name: :singularForm

            # @!attribute status
            #
            #   @return [String, nil]
            optional :status, String

            # @!attribute visibility
            #
            #   @return [String, nil]
            optional :visibility, String

            # @!attribute write_scope_name
            #
            #   @return [String, nil]
            optional :write_scope_name, String, api_name: :writeScopeName

            # @!method initialize(id:, allows_sensitive_properties:, create_date_property_name:, default_search_property_names:, deleted:, fully_qualified_name:, has_custom_properties:, has_default_properties:, has_external_object_ids:, has_owners:, has_pipelines:, indexed_for_filters_and_reports:, last_modified_property_name:, meta_type:, meta_type_id:, name:, object_type_id:, permissioning_type:, pipeline_property_name:, pipeline_stage_property_name:, required_properties:, restorable:, scope_mappings:, secondary_display_label_property_names:, access_scope_name: nil, created_at: nil, description: nil, integration_app_id: nil, janus_group: nil, owner_portal_id: nil, pipeline_close_date_property_name: nil, pipeline_time_to_close_property_name: nil, plural_form: nil, primary_display_label_property_name: nil, read_scope_name: nil, singular_form: nil, status: nil, visibility: nil, write_scope_name: nil)
            #   @param id [Integer]
            #   @param allows_sensitive_properties [Boolean]
            #   @param create_date_property_name [String]
            #   @param default_search_property_names [Array<String>]
            #   @param deleted [Boolean]
            #   @param fully_qualified_name [String]
            #   @param has_custom_properties [Boolean]
            #   @param has_default_properties [Boolean]
            #   @param has_external_object_ids [Boolean]
            #   @param has_owners [Boolean]
            #   @param has_pipelines [Boolean]
            #   @param indexed_for_filters_and_reports [Boolean]
            #   @param last_modified_property_name [String]
            #   @param meta_type [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema::MetaType]
            #   @param meta_type_id [Integer]
            #   @param name [String]
            #   @param object_type_id [String]
            #   @param permissioning_type [String]
            #   @param pipeline_property_name [String]
            #   @param pipeline_stage_property_name [String]
            #   @param required_properties [Array<String>]
            #   @param restorable [Boolean]
            #   @param scope_mappings [Array<HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema::ScopeMapping>]
            #   @param secondary_display_label_property_names [Array<String>]
            #   @param access_scope_name [String]
            #   @param created_at [Integer]
            #   @param description [String]
            #   @param integration_app_id [Integer]
            #   @param janus_group [String]
            #   @param owner_portal_id [Integer]
            #   @param pipeline_close_date_property_name [String]
            #   @param pipeline_time_to_close_property_name [String]
            #   @param plural_form [String]
            #   @param primary_display_label_property_name [String]
            #   @param read_scope_name [String]
            #   @param singular_form [String]
            #   @param status [String]
            #   @param visibility [String]
            #   @param write_scope_name [String]

            # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema#meta_type
            module MetaType
              extend HubspotSDK::Internal::Type::Enum

              HUBSPOT = :HUBSPOT
              INTEGRATION = :INTEGRATION
              PORTAL_SPECIFIC = :PORTAL_SPECIFIC
              CMS_HUBDB = :CMS_HUBDB
              HUBSPOT_EVENT = :HUBSPOT_EVENT
              INTEGRATION_EVENT = :INTEGRATION_EVENT
              PORTAL_SPECIFIC_EVENT = :PORTAL_SPECIFIC_EVENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class ScopeMapping < HubspotSDK::Internal::Type::BaseModel
              # @!attribute access_level
              #
              #   @return [String]
              required :access_level, String, api_name: :accessLevel

              # @!attribute request_action
              #
              #   @return [String]
              required :request_action, String, api_name: :requestAction

              # @!attribute scope_name
              #
              #   @return [String]
              required :scope_name, String, api_name: :scopeName

              # @!method initialize(access_level:, request_action:, scope_name:)
              #   @param access_level [String]
              #   @param request_action [String]
              #   @param scope_name [String]
            end
          end
        end
      end
    end
  end
end
