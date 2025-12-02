# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Schemas
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::SchemaUpdateParams} for more details.
          #
          # Update the schema for an existing object type
          #
          # @overload update(object_type, app_id:, clear_description: nil, description: nil, labels: nil, primary_display_property: nil, required_properties: nil, restorable: nil, searchable_properties: nil, secondary_display_properties: nil, request_options: {})
          #
          # @param object_type [String] Path param: The object type that you want to update the schema for.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param clear_description [Boolean] Body param:
          #
          # @param description [String] Body param:
          #
          # @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels] Body param:
          #
          # @param primary_display_property [String] Body param: The name of the primary property for this object. This will be displ
          #
          # @param required_properties [Array<String>] Body param: The names of properties that should be **required** when creating an
          #
          # @param restorable [Boolean] Body param:
          #
          # @param searchable_properties [Array<String>] Body param: Names of properties that will be indexed for this object type in by
          #
          # @param secondary_display_properties [Array<String>] Body param: The names of secondary properties for this object. These will be dis
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Objects::ObjectsSchemasObjectTypeDefinition]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::SchemaUpdateParams
          def update(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::SchemaUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["media-bridge/v1/%1$s/schemas/%2$s", app_id, object_type],
              body: parsed,
              model: HubspotSDK::Crm::Objects::ObjectsSchemasObjectTypeDefinition,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::SchemaListParams} for more details.
          #
          # Get the schemas for all object types.
          #
          # @overload list(app_id, archived: nil, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::SchemaListResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::SchemaListParams
          def list(app_id, params = {})
            parsed, options = HubspotSDK::Cms::MediaBridge::SchemaListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/schemas", app_id],
              query: parsed,
              model: HubspotSDK::Models::Cms::MediaBridge::SchemaListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::SchemaCreateAssociationParams} for more
          # details.
          #
          # Create a new association definition for the specified object type.
          #
          # @overload create_association(object_type, app_id:, from_object_type_id:, to_object_type_id:, name: nil, request_options: {})
          #
          # @param object_type [String] Path param: The object type to create the definition for
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param from_object_type_id [String] Body param:
          #
          # @param to_object_type_id [String] Body param:
          #
          # @param name [String] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Events::AssociationDefinition]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::SchemaCreateAssociationParams
          def create_association(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::SchemaCreateAssociationParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/schemas/%2$s/associations", app_id, object_type],
              body: parsed,
              model: HubspotSDK::Events::AssociationDefinition,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::SchemaDeleteAssociationParams} for more
          # details.
          #
          # Delete an existing association definition for an object type.
          #
          # @overload delete_association(association_id, app_id:, object_type:, request_options: {})
          #
          # @param association_id [String] The ID of the association definition to be deleted.
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param object_type [String] The object type for the definition that you want to delete.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::SchemaDeleteAssociationParams
          def delete_association(association_id, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::SchemaDeleteAssociationParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "media-bridge/v1/%1$s/schemas/%2$s/associations/%3$s",
                app_id,
                object_type,
                association_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::SchemaGetParams} for more details.
          #
          # Get the schema for a specified object type.
          #
          # @overload get(object_type, app_id:, request_options: {})
          #
          # @param object_type [String] The object type to get the schema for.
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Objects::ObjectSchema]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::SchemaGetParams
          def get(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::SchemaGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/schemas/%2$s", app_id, object_type],
              model: HubspotSDK::Crm::Objects::ObjectSchema,
              options: options
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
