# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Objects
          # @return [HubspotSDK::Resources::Crm::Objects::Objects::Batch]
          attr_reader :batch

          # Create a CRM object with the given properties and return a copy of the object,
          # including the ID. Documentation and examples for creating standard objects is
          # provided.
          #
          # @overload create(object_type, properties:, associations: nil, request_options: {})
          #
          # @param object_type [String]
          #
          # @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
          #
          # @param associations [Array<HubspotSDK::Models::Crm::PublicAssociationsForObject>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CreatedResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectCreateParams
          def create(object_type, params)
            parsed, options = HubspotSDK::Crm::Objects::ObjectCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/v3/objects/%1$s", object_type],
              body: parsed,
              model: HubspotSDK::Crm::CreatedResponseSimplePublicObject,
              options: options
            )
          end

          # Perform a partial update of an Object identified by `{objectId}`or optionally a
          # unique property value as specified by the `idProperty` query param. `{objectId}`
          # refers to the internal object ID by default, and the `idProperty` query param
          # refers to a property whose values are unique for the object. Provided property
          # values will be overwritten. Read-only and non-existent properties will result in
          # an error. Properties values can be cleared by passing an empty string.
          #
          # @overload update(object_id_, object_type:, properties:, id_property: nil, request_options: {})
          #
          # @param object_id_ [String] Path param:
          #
          # @param object_type [String] Path param:
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectUpdateParams
          def update(object_id_, params)
            parsed, options = HubspotSDK::Crm::Objects::ObjectUpdateParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            query_params = [:id_property]
            @client.request(
              method: :patch,
              path: ["crm/v3/objects/%1$s/%2$s", object_type, object_id_],
              query: parsed.slice(*query_params).transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::ObjectListParams} for more details.
          #
          # Read a page of objects. Control what is returned via the `properties` query
          # param.
          #
          # @overload list(object_type, after: nil, archived: nil, associations: nil, limit: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param object_type [String]
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          # @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectListParams
          def list(object_type, params = {})
            parsed, options = HubspotSDK::Crm::Objects::ObjectListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/objects/%1$s", object_type],
              query: parsed.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Move an Object identified by `{objectId}` to the recycling bin.
          #
          # @overload delete(object_id_, object_type:, request_options: {})
          #
          # @param object_id_ [String]
          # @param object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectDeleteParams
          def delete(object_id_, params)
            parsed, options = HubspotSDK::Crm::Objects::ObjectDeleteParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["crm/v3/objects/%1$s/%2$s", object_type, object_id_],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::ObjectGetParams} for more details.
          #
          # Read an Object identified by `{objectId}`. `{objectId}` refers to the internal
          # object ID by default, or optionally any unique property value as specified by
          # the `idProperty` query param. Control what is returned via the `properties`
          # query param.
          #
          # @overload get(object_id_, object_type:, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param object_id_ [String] Path param:
          #
          # @param object_type [String] Path param:
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] Query param: A comma separated list of object types to retrieve associated IDs f
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object
          #
          # @param properties [Array<String>] Query param: A comma separated list of the properties to be returned in the resp
          #
          # @param properties_with_history [Array<String>] Query param: A comma separated list of the properties to be returned along with
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectGetParams
          def get(object_id_, params)
            parsed, options = HubspotSDK::Crm::Objects::ObjectGetParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/v3/objects/%1$s/%2$s", object_type, object_id_],
              query: parsed.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # @overload search(object_type, after: nil, filter_groups: nil, limit: nil, properties: nil, query: nil, sorts: nil, request_options: {})
          #
          # @param object_type [String]
          #
          # @param after [String] A paging cursor token for retrieving subsequent pages.
          #
          # @param filter_groups [Array<HubspotSDK::Models::Crm::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
          #
          # @param limit [Integer] The maximum results to return, up to 200 objects.
          #
          # @param properties [Array<String>] A list of property names to include in the response.
          #
          # @param query [String] The search query string, up to 3000 characters.
          #
          # @param sorts [Array<String>] Specifies sorting order based on object properties.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponseWithTotalSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::ObjectSearchParams
          def search(object_type, params = {})
            parsed, options = HubspotSDK::Crm::Objects::ObjectSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/v3/objects/%1$s/search", object_type],
              body: parsed,
              model: HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubspotSDK::Resources::Crm::Objects::Objects::Batch.new(client: client)
          end
        end
      end
    end
  end
end
