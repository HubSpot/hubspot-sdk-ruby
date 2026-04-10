# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          # @return [HubSpotSDK::Resources::Crm::Objects::PartnerClients::Batch]
          attr_reader :batch

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::PartnerClientUpdateParams} for more details.
          #
          # Update the specified properties of an existing partner client.
          #
          # @overload update(partner_client_id, properties:, id_property: nil, request_options: {})
          #
          # @param partner_client_id [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::PartnerClientUpdateParams
          def update(partner_client_id, params)
            query_params = [:id_property]
            parsed, options = HubSpotSDK::Crm::Objects::PartnerClientUpdateParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["crm/objects/2026-03/partner_clients/%1$s", partner_client_id],
              query: query.transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::PartnerClientListParams} for more details.
          #
          # Retrieve a list of partner clients with optional filtering by deleted status,
          # associations, and specific properties. The response can be paginated using the
          # 'after' parameter.
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
          # @see HubSpotSDK::Models::Crm::Objects::PartnerClientListParams
          def list(params = {})
            parsed, options = HubSpotSDK::Crm::Objects::PartnerClientListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "crm/objects/2026-03/partner_clients",
              query: query.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::PartnerClientGetParams} for more details.
          #
          # Retrieve detailed information about a specific partner client, including
          # selected properties and associations. This endpoint is useful for accessing
          # comprehensive client data for analysis or integration purposes.
          #
          # @overload get(partner_client_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param partner_client_id [String]
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
          # @see HubSpotSDK::Models::Crm::Objects::PartnerClientGetParams
          def get(partner_client_id, params = {})
            parsed, options = HubSpotSDK::Crm::Objects::PartnerClientGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/partner_clients/%1$s", partner_client_id],
              query: query.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubSpotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::PartnerClientListAssociationsParams} for more
          # details.
          #
          # Retrieve a list of associations for a specific partner client based on the
          # specified object type.
          #
          # @overload list_associations(to_object_type, partner_client_id:, after: nil, limit: nil, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param partner_client_id [String] Path param
          #
          # @param after [String] Query param: The paging cursor token of the last successfully read resource will
          #
          # @param limit [Integer] Query param: The maximum number of results to display per page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
          #
          # @see HubSpotSDK::Models::Crm::Objects::PartnerClientListAssociationsParams
          def list_associations(to_object_type, params)
            parsed, options = HubSpotSDK::Crm::Objects::PartnerClientListAssociationsParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            partner_client_id =
              parsed.delete(:partner_client_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "crm/objects/2026-03/partner_clients/%1$s/associations/%2$s",
                partner_client_id,
                to_object_type
              ],
              query: query,
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Crm::MultiAssociatedObjectWithLabel,
              options: options
            )
          end

          # Execute a search for partner clients based on defined filters, properties, and
          # sorting options. This endpoint allows you to retrieve partner client data that
          # matches the search criteria, facilitating integration and data synchronization
          # with third-party systems.
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
          # @see HubSpotSDK::Models::Crm::Objects::PartnerClientSearchParams
          def search(params)
            parsed, options = HubSpotSDK::Crm::Objects::PartnerClientSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/partner_clients/search",
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
            @batch = HubSpotSDK::Resources::Crm::Objects::PartnerClients::Batch.new(client: client)
          end
        end
      end
    end
  end
end
