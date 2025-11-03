# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerServices
          # @return [HubspotSDK::Resources::Crm::Objects::PartnerServices::Associations]
          attr_reader :associations

          # @return [HubspotSDK::Resources::Crm::Objects::PartnerServices::Batch]
          attr_reader :batch

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
          # @param partner_service_id [String] Path param:
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceUpdateParams
          def update(partner_service_id, params)
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceUpdateParams.dump_request(params)
            query_params = [:id_property]
            @client.request(
              method: :patch,
              path: ["crm/v3/objects/partner_services/%1$s", partner_service_id],
              query: parsed.slice(*query_params).transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::PartnerServiceListParams} for more details.
          #
          # Read a page of partner services. Control what is returned via the `properties`
          # query param.
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
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/objects/partner_services",
              query: parsed.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
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
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceGetParams
          def get(partner_service_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/objects/partner_services/%1$s", partner_service_id],
              query: parsed.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

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
          # @see HubspotSDK::Models::Crm::Objects::PartnerServiceSearchParams
          def search(params = {})
            parsed, options = HubspotSDK::Crm::Objects::PartnerServiceSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/partner_services/search",
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
            @associations = HubspotSDK::Resources::Crm::Objects::PartnerServices::Associations.new(client: client)
            @batch = HubspotSDK::Resources::Crm::Objects::PartnerServices::Batch.new(client: client)
          end
        end
      end
    end
  end
end
