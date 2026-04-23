# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class ObjectSchemas
        # @return [HubSpotSDK::Resources::Crm::ObjectSchemas::Batch]
        attr_reader :batch

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Crm::ObjectSchemaCreateParams} for more details.
        #
        # Create a new custom object schema by defining its properties and associations.
        #
        # @overload create(allows_sensitive_properties:, associated_objects:, labels:, name:, properties:, required_properties:, searchable_properties:, secondary_display_properties:, description: nil, primary_display_property: nil, request_options: {})
        #
        # @param allows_sensitive_properties [Boolean] Determines if the object type can include properties that are marked as sensitiv
        #
        # @param associated_objects [Array<String>] Associations defined for this object type.
        #
        # @param labels [HubSpotSDK::Models::ObjectTypeDefinitionLabels]
        #
        # @param name [String] A unique name for this object. For internal use only.
        #
        # @param properties [Array<HubSpotSDK::Models::Crm::ObjectTypePropertyCreate>] Properties defined for this object type.
        #
        # @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
        #
        # @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
        #
        # @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
        #
        # @param description [String] A brief explanation of the object type.
        #
        # @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::ObjectSchema]
        #
        # @see HubSpotSDK::Models::Crm::ObjectSchemaCreateParams
        def create(params)
          parsed, options = HubSpotSDK::Crm::ObjectSchemaCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm-object-schemas/2026-03/schemas",
            body: parsed,
            model: HubSpotSDK::Crm::ObjectSchema,
            options: options
          )
        end

        # Update attributes of a custom object schema, such as properties and labels,
        # using the object type ID or fully qualified name.
        #
        # @overload update(object_type, clear_description:, allows_sensitive_properties: nil, description: nil, labels: nil, primary_display_property: nil, required_properties: nil, restorable: nil, searchable_properties: nil, secondary_display_properties: nil, request_options: {})
        #
        # @param object_type [String]
        # @param clear_description [Boolean]
        # @param allows_sensitive_properties [Boolean]
        # @param description [String]
        # @param labels [HubSpotSDK::Models::ObjectTypeDefinitionLabels]
        # @param primary_display_property [String]
        # @param required_properties [Array<String>]
        # @param restorable [Boolean]
        # @param searchable_properties [Array<String>]
        # @param secondary_display_properties [Array<String>]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::BaseObjectTypeDefinition]
        #
        # @see HubSpotSDK::Models::Crm::ObjectSchemaUpdateParams
        def update(object_type, params)
          parsed, options = HubSpotSDK::Crm::ObjectSchemaUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["crm-object-schemas/2026-03/schemas/%1$s", object_type],
            body: parsed,
            model: HubSpotSDK::BaseObjectTypeDefinition,
            options: options
          )
        end

        # Retrieve all custom object schemas, with options to include property
        # definitions, association definitions, and audit metadata.
        #
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CollectionResponseObjectSchemaNoPaging]
        #
        # @see HubSpotSDK::Models::Crm::ObjectSchemaListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Crm::ObjectSchemaListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm-object-schemas/2026-03/schemas",
            query: query.transform_keys(
              include_association_definitions: "includeAssociationDefinitions",
              include_audit_metadata: "includeAuditMetadata",
              include_property_definitions: "includePropertyDefinitions"
            ),
            model: HubSpotSDK::Crm::CollectionResponseObjectSchemaNoPaging,
            options: options
          )
        end

        # Remove a custom object schema from the account using its object type ID or fully
        # qualified name.
        #
        # @overload delete(object_type, archived: nil, request_options: {})
        #
        # @param object_type [String]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Crm::ObjectSchemaDeleteParams
        def delete(object_type, params = {})
          parsed, options = HubSpotSDK::Crm::ObjectSchemaDeleteParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["crm-object-schemas/2026-03/schemas/%1$s", object_type],
            query: query,
            model: NilClass,
            options: options
          )
        end

        # Create a new association between the specified object type and another object
        # type. This operation requires the definition of the association attributes, such
        # as the primary and target object type IDs.
        #
        # @overload create_association(object_type, from_object_type_id:, to_object_type_id:, name: nil, request_options: {})
        #
        # @param object_type [String]
        # @param from_object_type_id [String]
        # @param to_object_type_id [String]
        # @param name [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::BaseAssociationDefinition]
        #
        # @see HubSpotSDK::Models::Crm::ObjectSchemaCreateAssociationParams
        def create_association(object_type, params)
          parsed, options = HubSpotSDK::Crm::ObjectSchemaCreateAssociationParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["crm-object-schemas/2026-03/schemas/%1$s/associations", object_type],
            body: parsed,
            model: HubSpotSDK::BaseAssociationDefinition,
            options: options
          )
        end

        # Remove an association between two object types identified by the association
        # identifier and object type. This operation is irreversible and will permanently
        # delete the specified association.
        #
        # @overload delete_association(association_identifier, object_type:, request_options: {})
        #
        # @param association_identifier [String]
        # @param object_type [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Crm::ObjectSchemaDeleteAssociationParams
        def delete_association(association_identifier, params)
          parsed, options = HubSpotSDK::Crm::ObjectSchemaDeleteAssociationParams.dump_request(params)
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

        # Retrieve details of a custom object schema, including its properties and
        # associations, using the object type ID or fully qualified name.
        #
        # @overload get(object_type, include_association_definitions: nil, include_audit_metadata: nil, include_property_definitions: nil, request_options: {})
        #
        # @param object_type [String]
        # @param include_association_definitions [Boolean]
        # @param include_audit_metadata [Boolean]
        # @param include_property_definitions [Boolean]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::ObjectSchema]
        #
        # @see HubSpotSDK::Models::Crm::ObjectSchemaGetParams
        def get(object_type, params = {})
          parsed, options = HubSpotSDK::Crm::ObjectSchemaGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm-object-schemas/2026-03/schemas/%1$s", object_type],
            query: query.transform_keys(
              include_association_definitions: "includeAssociationDefinitions",
              include_audit_metadata: "includeAuditMetadata",
              include_property_definitions: "includePropertyDefinitions"
            ),
            model: HubSpotSDK::Crm::ObjectSchema,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::Crm::ObjectSchemas::Batch.new(client: client)
        end
      end
    end
  end
end
