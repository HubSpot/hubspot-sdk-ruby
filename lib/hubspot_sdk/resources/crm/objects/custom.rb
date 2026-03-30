# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Custom
          # @return [HubspotSDK::Resources::Crm::Objects::Custom::Batch]
          attr_reader :batch

          # Create a CRM object with the given properties and return a copy of the object,
          # including the ID. Documentation and examples for creating standard objects is
          # provided.
          #
          # @overload create(object_type, associations:, properties:, request_options: {})
          #
          # @param object_type [String]
          #
          # @param associations [Array<HubspotSDK::Models::Crm::PublicAssociationsForObject>]
          #
          # @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::CustomCreateParams
          def create(object_type, params)
            parsed, options = HubspotSDK::Crm::Objects::CustomCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/objects/2026-03/%1$s", object_type],
              body: parsed,
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::CustomUpdateParams} for more details.
          #
          # Perform a partial update of an Object identified by `{objectId}`or optionally a
          # unique property value as specified by the `idProperty` query param. `{objectId}`
          # refers to the internal object ID by default, and the `idProperty` query param
          # refers to a property whose values are unique for the object. Provided property
          # values will be overwritten. Read-only and non-existent properties will result in
          # an error. Properties values can be cleared by passing an empty string.
          #
          # @overload update(object_id_, object_type:, properties:, id_property: nil, request_options: {})
          #
          # @param object_id_ [String] Path param
          #
          # @param object_type [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::CustomUpdateParams
          def update(object_id_, params)
            query_params = [:id_property]
            parsed, options = HubspotSDK::Crm::Objects::CustomUpdateParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["crm/objects/2026-03/%1$s/%2$s", object_type, object_id_],
              query: query.transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::CustomListParams} for more details.
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
          # @see HubspotSDK::Models::Crm::Objects::CustomListParams
          def list(object_type, params = {})
            parsed, options = HubspotSDK::Crm::Objects::CustomListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/%1$s", object_type],
              query: query.transform_keys(properties_with_history: "propertiesWithHistory"),
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
          # @see HubspotSDK::Models::Crm::Objects::CustomDeleteParams
          def delete(object_id_, params)
            parsed, options = HubspotSDK::Crm::Objects::CustomDeleteParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["crm/objects/2026-03/%1$s/%2$s", object_type, object_id_],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::CustomGetParams} for more details.
          #
          # Read an Object identified by `{objectId}`. `{objectId}` refers to the internal
          # object ID by default, or optionally any unique property value as specified by
          # the `idProperty` query param. Control what is returned via the `properties`
          # query param.
          #
          # @overload get(object_id_, object_type:, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param object_id_ [String] Path param
          #
          # @param object_type [String] Path param
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] Query param: A comma separated list of object types to retrieve associated IDs f
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param properties [Array<String>] Query param: A comma separated list of the properties to be returned in the resp
          #
          # @param properties_with_history [Array<String>] Query param: A comma separated list of the properties to be returned along with
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::Crm::Objects::CustomGetParams
          def get(object_id_, params)
            parsed, options = HubspotSDK::Crm::Objects::CustomGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/%1$s/%2$s", object_type, object_id_],
              query: query.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Merge two CRM objects of the same type by specifying one as the primary object
          # and the other as the object to be merged into it.
          #
          # @overload merge(object_type, object_id_to_merge:, primary_object_id:, request_options: {})
          #
          # @param object_type [String]
          #
          # @param object_id_to_merge [String] The ID of the company to merge into the primary.
          #
          # @param primary_object_id [String] The ID of the primary company, which the other will merge into.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::CustomMergeParams
          def merge(object_type, params)
            parsed, options = HubspotSDK::Crm::Objects::CustomMergeParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/objects/2026-03/%1$s/merge", object_type],
              body: parsed,
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # @overload search(object_type, after:, filter_groups:, limit:, properties:, sorts:, query: nil, request_options: {})
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
          # @param sorts [Array<String>] Specifies sorting order based on object properties.
          #
          # @param query [String] The search query string, up to 3000 characters.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponseWithTotalSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::CustomSearchParams
          def search(object_type, params)
            parsed, options = HubspotSDK::Crm::Objects::CustomSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/objects/2026-03/%1$s/search", object_type],
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
            @batch = HubspotSDK::Resources::Crm::Objects::Custom::Batch.new(client: client)
          end
        end
      end
    end
  end
end
