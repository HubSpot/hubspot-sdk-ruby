# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerServices
          # Update multiple partner services using their internal IDs or unique property
          # values. This operation allows for batch processing of updates, ensuring
          # efficient synchronization of service data between HubSpot and other systems.
          #
          # @overload update(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceUpdateParams
          def update(params)
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/partner_services/batch/update",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
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
          # Retrieve records by record ID or include the `idProperty` parameter to retrieve
          # records by a custom unique value property.
          #
          # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>] Body param
          #
          # @param properties [Array<String>] Body param: Key-value pairs for setting properties for the new object.
          #
          # @param properties_with_history [Array<String>] Body param: Key-value pairs for setting properties for the new object and their
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param id_property [String] Body param: When using a custom unique value property to retrieve records, the n
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceGetParams
          def get(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/partner_services/batch/read",
              query: query,
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
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
          end
        end
      end
    end
  end
end
