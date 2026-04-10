# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class Deals
          # @return [HubSpotSDK::Resources::Crm::Objects::Deals::Batch]
          attr_reader :batch

          # Create a deal with the given properties and return a copy of the object,
          # including the ID. Documentation and examples for creating standard deals is
          # provided.
          #
          # @overload create(associations:, properties:, request_options: {})
          #
          # @param associations [Array<HubSpotSDK::Models::Crm::PublicAssociationsForObject>]
          #
          # @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::DealCreateParams
          def create(params)
            parsed, options = HubSpotSDK::Crm::Objects::DealCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/0-3",
              body: parsed,
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::DealUpdateParams} for more details.
          #
          # Perform a partial update of an Object identified by `{dealId}`or optionally a
          # unique property value as specified by the `idProperty` query param. `{dealId}`
          # refers to the internal object ID by default, and the `idProperty` query param
          # refers to a property whose values are unique for the object. Provided property
          # values will be overwritten. Read-only and non-existent properties will result in
          # an error. Properties values can be cleared by passing an empty string.
          #
          # @overload update(deal_id, properties:, id_property: nil, request_options: {})
          #
          # @param deal_id [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::DealUpdateParams
          def update(deal_id, params)
            query_params = [:id_property]
            parsed, options = HubSpotSDK::Crm::Objects::DealUpdateParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["crm/objects/2026-03/0-3/%1$s", deal_id],
              query: query.transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::DealListParams} for more details.
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
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
          #
          # @see HubSpotSDK::Models::Crm::Objects::DealListParams
          def list(params = {})
            parsed, options = HubSpotSDK::Crm::Objects::DealListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "crm/objects/2026-03/0-3",
              query: query.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Move an Object identified by `{dealId}` to the recycling bin.
          #
          # @overload delete(deal_id, request_options: {})
          #
          # @param deal_id [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Objects::DealDeleteParams
          def delete(deal_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/objects/2026-03/0-3/%1$s", deal_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::DealGetParams} for more details.
          #
          # Read an Object identified by `{dealId}`. `{dealId}` refers to the internal
          # object ID by default, or optionally any unique property value as specified by
          # the `idProperty` query param. Control what is returned via the `properties`
          # query param.
          #
          # @overload get(deal_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param deal_id [String]
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
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubSpotSDK::Models::Crm::Objects::DealGetParams
          def get(deal_id, params = {})
            parsed, options = HubSpotSDK::Crm::Objects::DealGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/0-3/%1$s", deal_id],
              query: query.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubSpotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Combine two deals of the same type into a single deal.
          #
          # @overload merge(object_id_to_merge:, primary_object_id:, request_options: {})
          #
          # @param object_id_to_merge [String] The ID of the company to merge into the primary.
          #
          # @param primary_object_id [String] The ID of the primary company, which the other will merge into.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::DealMergeParams
          def merge(params)
            parsed, options = HubSpotSDK::Crm::Objects::DealMergeParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/0-3/merge",
              body: parsed,
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Search for deals using specified criteria and filters.
          #
          # @overload search(after:, filter_groups:, limit:, properties:, sorts:, query: nil, request_options: {})
          #
          # @param after [String] A paging cursor token for retrieving subsequent pages.
          #
          # @param filter_groups [Array<HubSpotSDK::Models::Crm::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
          #
          # @param limit [Integer] The maximum results to return, up to 200 objects.
          #
          # @param properties [Array<String>] A list of property names to include in the response.
          #
          # @param sorts [Array<String>] Specifies sorting order based on object properties.
          #
          # @param query [String] The search query string, up to 3000 characters.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::CollectionResponseWithTotalSimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::DealSearchParams
          def search(params)
            parsed, options = HubSpotSDK::Crm::Objects::DealSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/0-3/search",
              body: parsed,
              model: HubSpotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubSpotSDK::Resources::Crm::Objects::Deals::Batch.new(client: client)
          end
        end
      end
    end
  end
end
