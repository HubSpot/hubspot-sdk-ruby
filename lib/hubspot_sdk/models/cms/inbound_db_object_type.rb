# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class InboundDBObjectType < HubspotSDK::Internal::Type::BaseModel
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
        required :has_custom_properties, HubspotSDK::Internal::Type::Boolean, api_name: :hasCustomProperties

        # @!attribute has_default_properties
        #
        #   @return [Boolean]
        required :has_default_properties, HubspotSDK::Internal::Type::Boolean, api_name: :hasDefaultProperties

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
        #   @return [Symbol, HubspotSDK::Models::Cms::InboundDBObjectType::MetaType]
        required :meta_type, enum: -> { HubspotSDK::Cms::InboundDBObjectType::MetaType }, api_name: :metaType

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
        #   @return [Array<HubspotSDK::Models::Cms::ScopeMapping>]
        required :scope_mappings,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ScopeMapping] },
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
        #   @param meta_type [Symbol, HubspotSDK::Models::Cms::InboundDBObjectType::MetaType]
        #   @param meta_type_id [Integer]
        #   @param name [String]
        #   @param object_type_id [String]
        #   @param permissioning_type [String]
        #   @param pipeline_property_name [String]
        #   @param pipeline_stage_property_name [String]
        #   @param required_properties [Array<String>]
        #   @param restorable [Boolean]
        #   @param scope_mappings [Array<HubspotSDK::Models::Cms::ScopeMapping>]
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

        # @see HubspotSDK::Models::Cms::InboundDBObjectType#meta_type
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
      end
    end
  end
end
