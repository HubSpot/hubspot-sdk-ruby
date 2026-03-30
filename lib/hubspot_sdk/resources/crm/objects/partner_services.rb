# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerServices
          # @return [HubspotSDK::Resources::Crm::Objects::PartnerServices::Batch]
          attr_reader :batch

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::PartnerServiceUpdateParams} for more details.
          #
          # Perform a partial update of an Object identified by `{partnerServiceId}`or
          # optionally a unique property value as specified by the `idProperty` query param.
          # `{partnerServiceId}` refers to the internal object ID by default, and the
          # `idProperty` query param refers to a property whose values are unique for the
          # object. Provided property values will be overwritten. Read-only and non-existent
          # properties will result in an error. Properties values can be cleared by passing
          # an empty string.
          #
          # @overload update(partner_service_id, properties:, id_property: nil, request_options: {})
          #
          # @param partner_service_id [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceUpdateParams
          def update(partner_service_id, params)
            query_params = [:id_property]
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceUpdateParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["crm/objects/2026-03/partner_services/%1$s", partner_service_id],
              query: query.transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::PartnerServiceListParams} for more details.
          #
          # Retrieve a list of associations for a specific partner service, filtered by the
          # type of associated object.
          #
          # @overload list(to_object_type, partner_service_id:, after: nil, limit: nil, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param partner_service_id [String] Path param
          #
          # @param after [String] Query param: The paging cursor token of the last successfully read resource will
          #
          # @param limit [Integer] Query param: The maximum number of results to display per page.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
          #
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceListParams
          def list(to_object_type, params)
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            partner_service_id =
              parsed.delete(:partner_service_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "crm/objects/2026-03/partner_services/%1$s/associations/%2$s",
                partner_service_id,
                to_object_type
              ],
              query: query,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::MultiAssociatedObjectWithLabel,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::PartnerServiceGetParams} for more details.
          #
          # Read an Object identified by `{partnerServiceId}`. `{partnerServiceId}` refers
          # to the internal object ID by default, or optionally any unique property value as
          # specified by the `idProperty` query param. Control what is returned via the
          # `properties` query param.
          #
          # @overload get(partner_service_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param partner_service_id [String]
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
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceGetParams
          def get(partner_service_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/partner_services/%1$s", partner_service_id],
              query: query.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Execute a search query to find partner services based on defined filters,
          # properties, and sorting options. This endpoint allows you to retrieve a
          # collection of partner services that match the specified search criteria.
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
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceSearchParams
          def search(params)
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/partner_services/search",
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
            @batch = HubspotSDK::Resources::Crm::Objects::PartnerServices::Batch.new(client: client)
          end
        end
      end
    end
  end
end
