# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Deals
          # @return [HubspotSDK::Resources::Crm::Objects::Deals::Batch]
          attr_reader :batch

          # Create a deal with the given properties and return a copy of the object,
          # including the ID. Documentation and examples for creating standard deals is
          # provided.
          #
          # @overload create(properties:, associations: nil, request_options: {})
          #
          # @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
          #
          # @param associations [Array<HubspotSDK::Models::Crm::PublicAssociationsForObject>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CreatedResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::DealCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Objects::DealCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/0-3",
              body: parsed,
              model: HubspotSDK::Crm::CreatedResponseSimplePublicObject,
              options: options
            )
          end

          # Perform a partial update of an Object identified by `{dealId}`or optionally a
          # unique property value as specified by the `idProperty` query param. `{dealId}`
          # refers to the internal object ID by default, and the `idProperty` query param
          # refers to a property whose values are unique for the object. Provided property
          # values will be overwritten. Read-only and non-existent properties will result in
          # an error. Properties values can be cleared by passing an empty string.
          #
          # @overload update(deal_id, properties:, id_property: nil, request_options: {})
          #
          # @param deal_id [String] Path param: The unique identifier of the deal to be updated.
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::DealUpdateParams
          def update(deal_id, params)
            parsed, options = HubspotSDK::Crm::Objects::DealUpdateParams.dump_request(params)
            query_params = [:id_property]
            @client.request(
              method: :patch,
              path: ["crm/v3/objects/0-3/%1$s", deal_id],
              query: parsed.slice(*query_params).transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::DealListParams} for more details.
          #
          # Read a page of deals. Control what is returned via the `properties` query param.
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
          # @see HubspotSDK::Models::Crm::Objects::DealListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::DealListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/objects/0-3",
              query: parsed.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Move an Object identified by `{dealId}` to the recycling bin.
          #
          # @overload delete(deal_id, request_options: {})
          #
          # @param deal_id [String] The unique identifier of the deal to be archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::DealDeleteParams
          def delete(deal_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/v3/objects/0-3/%1$s", deal_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::DealGetParams} for more details.
          #
          # Read an Object identified by `{dealId}`. `{dealId}` refers to the internal
          # object ID by default, or optionally any unique property value as specified by
          # the `idProperty` query param. Control what is returned via the `properties`
          # query param.
          #
          # @overload get(deal_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param deal_id [String] The unique identifier of the deal to be retrieved.
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          # @param id_property [String] The name of a property whose values are unique for this object
          #
          # @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          # @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::Crm::Objects::DealGetParams
          def get(deal_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::DealGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/objects/0-3/%1$s", deal_id],
              query: parsed.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Combine two deals of the same type into a single deal.
          #
          # @overload merge(object_id_to_merge:, primary_object_id:, request_options: {})
          #
          # @param object_id_to_merge [String]
          # @param primary_object_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::DealMergeParams
          def merge(params)
            parsed, options = HubspotSDK::Crm::Objects::DealMergeParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/0-3/merge",
              body: parsed,
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Search for deals using specified criteria and filters.
          #
          # @overload search(after: nil, filter_groups: nil, limit: nil, properties: nil, query: nil, sorts: nil, request_options: {})
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
          # @see HubspotSDK::Models::Crm::Objects::DealSearchParams
          def search(params = {})
            parsed, options = HubspotSDK::Crm::Objects::DealSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/0-3/search",
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
            @batch = HubspotSDK::Resources::Crm::Objects::Deals::Batch.new(client: client)
          end
        end
      end
    end
  end
end
