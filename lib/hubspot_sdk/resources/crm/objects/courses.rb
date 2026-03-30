# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Courses
          # @return [HubspotSDK::Resources::Crm::Objects::Courses::Batch]
          attr_reader :batch

          # Create a course with the given properties and return a copy of the object,
          # including the ID. Documentation and examples for creating standard courses is
          # provided.
          #
          # @overload create(associations:, properties:, request_options: {})
          #
          # @param associations [Array<HubspotSDK::Models::Crm::PublicAssociationsForObject>]
          #
          # @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::CourseCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Objects::CourseCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/0-410",
              body: parsed,
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::CourseUpdateParams} for more details.
          #
          # Perform a partial update of an Object identified by `{courseId}`or optionally a
          # unique property value as specified by the `idProperty` query param. `{courseId}`
          # refers to the internal object ID by default, and the `idProperty` query param
          # refers to a property whose values are unique for the object. Provided property
          # values will be overwritten. Read-only and non-existent properties will result in
          # an error. Properties values can be cleared by passing an empty string.
          #
          # @overload update(course_id, properties:, id_property: nil, request_options: {})
          #
          # @param course_id [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::CourseUpdateParams
          def update(course_id, params)
            query_params = [:id_property]
            parsed, options = HubspotSDK::Crm::Objects::CourseUpdateParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["crm/objects/2026-03/0-410/%1$s", course_id],
              query: query.transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::CourseListParams} for more details.
          #
          # Read a page of courses. Control what is returned via the `properties` query
          # param.
          #
          # @overload list(after: nil, archived: nil, associations: nil, limit: nil, properties: nil, properties_with_history: nil, request_options: {})
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
          # @see HubspotSDK::Models::Crm::Objects::CourseListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::CourseListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "crm/objects/2026-03/0-410",
              query: query.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Move an Object identified by `{courseId}` to the recycling bin.
          #
          # @overload delete(course_id, request_options: {})
          #
          # @param course_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::CourseDeleteParams
          def delete(course_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/objects/2026-03/0-410/%1$s", course_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::CourseGetParams} for more details.
          #
          # Read an Object identified by `{courseId}`. `{courseId}` refers to the internal
          # object ID by default, or optionally any unique property value as specified by
          # the `idProperty` query param. Control what is returned via the `properties`
          # query param.
          #
          # @overload get(course_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param course_id [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          # @param id_property [String] The name of a property whose values are unique for this object type
          #
          # @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          # @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::Crm::Objects::CourseGetParams
          def get(course_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::CourseGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/0-410/%1$s", course_id],
              query: query.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Fetch objects using a search query
          #
          # @overload search(after:, filter_groups:, limit:, properties:, sorts:, query: nil, request_options: {})
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
          # @see HubspotSDK::Models::Crm::Objects::CourseSearchParams
          def search(params)
            parsed, options = HubspotSDK::Crm::Objects::CourseSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/0-410/search",
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
            @batch = HubspotSDK::Resources::Crm::Objects::Courses::Batch.new(client: client)
          end
        end
      end
    end
  end
end
