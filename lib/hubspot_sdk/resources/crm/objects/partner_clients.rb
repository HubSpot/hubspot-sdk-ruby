# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Objects
        class PartnerClients
          # @return [HubspotSDK::Resources::CRM::Objects::PartnerClients::Associations]
          attr_reader :associations

          # @return [HubspotSDK::Resources::CRM::Objects::PartnerClients::Batch]
          attr_reader :batch

          # Perform a partial update of an Object identified by `{objectId}`. `{objectId}`
          # refers to the internal object ID by default, or optionally any unique property
          # value as specified by the `idProperty` query param. Provided property values
          # will be overwritten. Read-only and non-existent properties will be ignored.
          # Properties values can be cleared by passing an empty string.
          #
          # @overload update(partner_client_id, properties:, id_property: nil, request_options: {})
          #
          # @param partner_client_id [String] Path param:
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::SimplePublicObject]
          #
          # @see HubspotSDK::Models::CRM::Objects::PartnerClientUpdateParams
          def update(partner_client_id, params)
            parsed, options = HubspotSDK::CRM::Objects::PartnerClientUpdateParams.dump_request(params)
            query_params = [:id_property]
            @client.request(
              method: :patch,
              path: ["crm/v3/objects/partner_clients/%1$s", partner_client_id],
              query: parsed.slice(*query_params).transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::CRM::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Objects::PartnerClientListParams} for more details.
          #
          # Read a page of objects. Control what is returned via the `properties` query
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
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::CRM::SimplePublicObjectWithAssociations>]
          #
          # @see HubspotSDK::Models::CRM::Objects::PartnerClientListParams
          def list(params = {})
            parsed, options = HubspotSDK::CRM::Objects::PartnerClientListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/objects/partner_clients",
              query: parsed.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::CRM::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Objects::PartnerClientGetParams} for more details.
          #
          # Read an Object identified by `{objectId}`. `{objectId}` refers to the internal
          # object ID by default, or optionally any unique property value as specified by
          # the `idProperty` query param. Control what is returned via the `properties`
          # query param.
          #
          # @overload get(partner_client_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param partner_client_id [String]
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
          # @return [HubspotSDK::Models::CRM::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::CRM::Objects::PartnerClientGetParams
          def get(partner_client_id, params = {})
            parsed, options = HubspotSDK::CRM::Objects::PartnerClientGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/objects/partner_clients/%1$s", partner_client_id],
              query: parsed.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::CRM::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # @overload search(after: nil, filter_groups: nil, limit: nil, properties: nil, query: nil, sorts: nil, request_options: {})
          #
          # @param after [String] A paging cursor token for retrieving subsequent pages.
          #
          # @param filter_groups [Array<HubspotSDK::Models::CRM::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
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
          # @return [HubspotSDK::Models::CRM::CollectionResponseWithTotalSimplePublicObject]
          #
          # @see HubspotSDK::Models::CRM::Objects::PartnerClientSearchParams
          def search(params = {})
            parsed, options = HubspotSDK::CRM::Objects::PartnerClientSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/partner_clients/search",
              body: parsed,
              model: HubspotSDK::CRM::CollectionResponseWithTotalSimplePublicObject,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @associations = HubspotSDK::Resources::CRM::Objects::PartnerClients::Associations.new(client: client)
            @batch = HubspotSDK::Resources::CRM::Objects::PartnerClients::Batch.new(client: client)
          end
        end
      end
    end
  end
end
