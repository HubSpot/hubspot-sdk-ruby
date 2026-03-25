# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class ObjectSchemas
        # @return [HubspotSDK::Resources::Crm::ObjectSchemas::Batch]
        attr_reader :batch

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ObjectSchemaCreateParams} for more details.
        #
        # @overload create(allows_sensitive_properties:, associated_objects:, labels:, name:, properties:, required_properties:, searchable_properties:, secondary_display_properties:, description: nil, primary_display_property: nil, request_options: {})
        #
        # @param allows_sensitive_properties [Boolean]
        #
        # @param associated_objects [Array<String>] Associations defined for this object type.
        #
        # @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
        #
        # @param name [String] A unique name for this object. For internal use only.
        #
        # @param properties [Array<HubspotSDK::Models::Crm::ObjectTypePropertyCreate>] Properties defined for this object type.
        #
        # @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
        #
        # @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
        #
        # @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
        #
        # @param description [String]
        #
        # @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::ObjectSchema]
        #
        # @see HubspotSDK::Models::Crm::ObjectSchemaCreateParams
        def create(params)
          parsed, options = HubspotSDK::Crm::ObjectSchemaCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm-object-schemas/2026-03/schemas",
            body: parsed,
            model: HubspotSDK::ObjectSchema,
            options: options
          )
        end

        # @overload update(object_type, clear_description:, allows_sensitive_properties: nil, description: nil, labels: nil, primary_display_property: nil, required_properties: nil, restorable: nil, searchable_properties: nil, secondary_display_properties: nil, request_options: {})
        #
        # @param object_type [String]
        # @param clear_description [Boolean]
        # @param allows_sensitive_properties [Boolean]
        # @param description [String]
        # @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
        # @param primary_display_property [String]
        # @param required_properties [Array<String>]
        # @param restorable [Boolean]
        # @param searchable_properties [Array<String>]
        # @param secondary_display_properties [Array<String>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::ObjectTypeDefinition]
        #
        # @see HubspotSDK::Models::Crm::ObjectSchemaUpdateParams
        def update(object_type, params)
          parsed, options = HubspotSDK::Crm::ObjectSchemaUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["crm-object-schemas/2026-03/schemas/%1$s", object_type],
            body: parsed,
            model: HubspotSDK::ObjectTypeDefinition,
            options: options
          )
        end

        # @overload list(archived: nil, include_association_definitions: nil, include_audit_metadata: nil, include_property_definitions: nil, request_options: {})
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param include_association_definitions [Boolean]
        #
        # @param include_audit_metadata [Boolean]
        #
        # @param include_property_definitions [Boolean]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CollectionResponseObjectSchemaNoPaging]
        #
        # @see HubspotSDK::Models::Crm::ObjectSchemaListParams
        def list(params = {})
          parsed, options = HubspotSDK::Crm::ObjectSchemaListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm-object-schemas/2026-03/schemas",
            query: query.transform_keys(
              include_association_definitions: "includeAssociationDefinitions",
              include_audit_metadata: "includeAuditMetadata",
              include_property_definitions: "includePropertyDefinitions"
            ),
            model: HubspotSDK::CollectionResponseObjectSchemaNoPaging,
            options: options
          )
        end

        # @overload delete(object_type, archived: nil, request_options: {})
        #
        # @param object_type [String]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ObjectSchemaDeleteParams
        def delete(object_type, params = {})
          parsed, options = HubspotSDK::Crm::ObjectSchemaDeleteParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["crm-object-schemas/2026-03/schemas/%1$s", object_type],
            query: query,
            model: NilClass,
            options: options
          )
        end

        # @overload create_association(object_type, from_object_type_id:, to_object_type_id:, name: nil, request_options: {})
        #
        # @param object_type [String]
        # @param from_object_type_id [String]
        # @param to_object_type_id [String]
        # @param name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::AssociationDefinition]
        #
        # @see HubspotSDK::Models::Crm::ObjectSchemaCreateAssociationParams
        def create_association(object_type, params)
          parsed, options = HubspotSDK::Crm::ObjectSchemaCreateAssociationParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["crm-object-schemas/2026-03/schemas/%1$s/associations", object_type],
            body: parsed,
            model: HubspotSDK::Events::AssociationDefinition,
            options: options
          )
        end

        # @overload delete_association(association_identifier, object_type:, request_options: {})
        #
        # @param association_identifier [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::ObjectSchemaDeleteAssociationParams
        def delete_association(association_identifier, params)
          parsed, options = HubspotSDK::Crm::ObjectSchemaDeleteAssociationParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "crm-object-schemas/2026-03/schemas/%1$s/associations/%2$s",
              object_type,
              association_identifier
            ],
            model: NilClass,
            options: options
          )
        end

        # @overload get(object_type, include_association_definitions: nil, include_audit_metadata: nil, include_property_definitions: nil, request_options: {})
        #
        # @param object_type [String]
        # @param include_association_definitions [Boolean]
        # @param include_audit_metadata [Boolean]
        # @param include_property_definitions [Boolean]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::ObjectSchema]
        #
        # @see HubspotSDK::Models::Crm::ObjectSchemaGetParams
        def get(object_type, params = {})
          parsed, options = HubspotSDK::Crm::ObjectSchemaGetParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm-object-schemas/2026-03/schemas/%1$s", object_type],
            query: query.transform_keys(
              include_association_definitions: "includeAssociationDefinitions",
              include_audit_metadata: "includeAuditMetadata",
              include_property_definitions: "includePropertyDefinitions"
            ),
            model: HubspotSDK::ObjectSchema,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Crm::ObjectSchemas::Batch.new(client: client)
        end
      end
    end
  end
end
