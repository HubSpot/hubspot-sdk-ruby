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
        #   @return [HubSpotSDK::Models::Cms::MediaBridgeProperty]
        required :property, -> { HubSpotSDK::Cms::MediaBridgeProperty }

        # @!attribute calculation_expression
        #
        #   @return [Object, nil]
        optional :calculation_expression,
                 HubSpotSDK::Internal::Type::Unknown,
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

        # @!attribute lookup_association_spec
        #
        #   @return [HubSpotSDK::Models::Cms::LookupAssociationSpec, nil]
        optional :lookup_association_spec,
                 -> { HubSpotSDK::Cms::LookupAssociationSpec },
                 api_name: :lookupAssociationSpec

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

        # @!method initialize(object_type_id:, property:, calculation_expression: nil, calculation_formula: nil, definition_source: nil, extension_data: nil, external_options_meta_data: nil, fulcrum_portal_id: nil, fulcrum_timestamp: nil, janus_group: nil, lookup_association_spec: nil, permission: nil, property_definition_source: nil, property_requirements: nil, rollup_expression: nil)
        #   @param object_type_id [String]
        #
        #   @param property [HubSpotSDK::Models::Cms::MediaBridgeProperty] A HubSpot property
        #
        #   @param calculation_expression [Object]
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
        #   @param lookup_association_spec [HubSpotSDK::Models::Cms::LookupAssociationSpec]
        #
        #   @param permission [HubSpotSDK::Models::Cms::FieldLevelPermission]
        #
        #   @param property_definition_source [HubSpotSDK::Models::Cms::DefinitionSource]
        #
        #   @param property_requirements [HubSpotSDK::Models::Cms::DefaultRequirements]
        #
        #   @param rollup_expression [HubSpotSDK::Models::Cms::RollupExpression]
      end
    end
  end
end
