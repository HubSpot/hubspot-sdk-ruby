# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Objects
        class Schemas
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Objects::SchemaCreateParams} for more details.
          #
          # @overload create(associated_objects:, labels:, name:, properties:, required_properties:, description: nil, primary_display_property: nil, searchable_properties: nil, secondary_display_properties: nil, request_options: {})
          #
          # @param associated_objects [Array<String>] Associations defined for this object type.
          #
          # @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          #
          # @param name [String] A unique name for this object. For internal use only.
          #
          # @param properties [Array<HubspotSDK::Models::CRM::Objects::ObjectTypePropertyCreate>] Properties defined for this object type.
          #
          # @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
          #
          # @param description [String]
          #
          # @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
          #
          # @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
          #
          # @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Objects::ObjectSchema]
          #
          # @see HubspotSDK::Models::CRM::Objects::SchemaCreateParams
          def create(params)
            parsed, options = HubspotSDK::CRM::Objects::SchemaCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm-object-schemas/v3/schemas",
              body: parsed,
              model: HubspotSDK::CRM::Objects::ObjectSchema,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Objects::SchemaUpdateParams} for more details.
          #
          # @overload update(object_type, clear_description: nil, description: nil, labels: nil, primary_display_property: nil, required_properties: nil, restorable: nil, searchable_properties: nil, secondary_display_properties: nil, request_options: {})
          #
          # @param object_type [String] Fully qualified name or object type ID of your schema.
          #
          # @param clear_description [Boolean]
          #
          # @param description [String]
          #
          # @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          #
          # @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
          #
          # @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
          #
          # @param restorable [Boolean]
          #
          # @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
          #
          # @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Objects::ObjectTypeDefinition]
          #
          # @see HubspotSDK::Models::CRM::Objects::SchemaUpdateParams
          def update(object_type, params = {})
            parsed, options = HubspotSDK::CRM::Objects::SchemaUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["crm-object-schemas/v3/schemas/%1$s", object_type],
              body: parsed,
              model: HubspotSDK::CRM::Objects::ObjectTypeDefinition,
              options: options
            )
          end

          # @overload list(archived: nil, request_options: {})
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CollectionResponseObjectSchemaNoPaging]
          #
          # @see HubspotSDK::Models::CRM::Objects::SchemaListParams
          def list(params = {})
            parsed, options = HubspotSDK::CRM::Objects::SchemaListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm-object-schemas/v3/schemas",
              query: parsed,
              model: HubspotSDK::CollectionResponseObjectSchemaNoPaging,
              options: options
            )
          end

          # @overload delete(object_type, archived: nil, request_options: {})
          #
          # @param object_type [String] Fully qualified name or object type ID of your schema.
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Objects::SchemaDeleteParams
          def delete(object_type, params = {})
            parsed, options = HubspotSDK::CRM::Objects::SchemaDeleteParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["crm-object-schemas/v3/schemas/%1$s", object_type],
              query: parsed,
              model: NilClass,
              options: options
            )
          end

          # @overload create_association(object_type, from_object_type_id:, to_object_type_id:, name: nil, request_options: {})
          #
          # @param object_type [String] Fully qualified name or object type ID of your schema.
          #
          # @param from_object_type_id [String]
          #
          # @param to_object_type_id [String]
          #
          # @param name [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Events::AssociationDefinition]
          #
          # @see HubspotSDK::Models::CRM::Objects::SchemaCreateAssociationParams
          def create_association(object_type, params)
            parsed, options = HubspotSDK::CRM::Objects::SchemaCreateAssociationParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm-object-schemas/v3/schemas/%1$s/associations", object_type],
              body: parsed,
              model: HubspotSDK::Events::AssociationDefinition,
              options: options
            )
          end

          # @overload delete_association(association_identifier, object_type:, request_options: {})
          #
          # @param association_identifier [String] Unique ID of the association to remove.
          #
          # @param object_type [String] Fully qualified name or object type ID of your schema.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Objects::SchemaDeleteAssociationParams
          def delete_association(association_identifier, params)
            parsed, options = HubspotSDK::CRM::Objects::SchemaDeleteAssociationParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "crm-object-schemas/v3/schemas/%1$s/associations/%2$s",
                object_type,
                association_identifier
              ],
              model: NilClass,
              options: options
            )
          end

          # @overload get(object_type, request_options: {})
          #
          # @param object_type [String] Fully qualified name or object type ID of your schema.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Objects::ObjectSchema]
          #
          # @see HubspotSDK::Models::CRM::Objects::SchemaGetParams
          def get(object_type, params = {})
            @client.request(
              method: :get,
              path: ["crm-object-schemas/v3/schemas/%1$s", object_type],
              model: HubspotSDK::CRM::Objects::ObjectSchema,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
