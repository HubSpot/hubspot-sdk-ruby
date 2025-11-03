# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          # @return [HubspotSDK::Resources::Crm::Objects::PartnerClients::Associations]
          attr_reader :associations

          # @return [HubspotSDK::Resources::Crm::Objects::PartnerClients::Batch]
          attr_reader :batch

          # @overload update(partner_client_id, properties:, id_property: nil, request_options: {})
          #
          # @param partner_client_id [String] Path param:
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PartnerClientUpdateParams
          def update(partner_client_id, params)
            parsed, options = HubspotSDK::Crm::Objects::PartnerClientUpdateParams.dump_request(params)
            query_params = [:id_property]
            @client.request(
              method: :patch,
              path: ["crm/v3/objects/partner_clients/%1$s", partner_client_id],
              query: parsed.slice(*query_params).transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # @overload list(after: nil, archived: nil, associations: nil, limit: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param after [String]
          # @param archived [Boolean]
          # @param associations [Array<String>]
          # @param limit [Integer]
          # @param properties [Array<String>]
          # @param properties_with_history [Array<String>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
          #
          # @see HubspotSDK::Models::Crm::Objects::PartnerClientListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::PartnerClientListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/objects/partner_clients",
              query: parsed.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # @overload get(partner_client_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param partner_client_id [String]
          # @param archived [Boolean]
          # @param associations [Array<String>]
          # @param id_property [String]
          # @param properties [Array<String>]
          # @param properties_with_history [Array<String>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::Crm::Objects::PartnerClientGetParams
          def get(partner_client_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::PartnerClientGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/objects/partner_clients/%1$s", partner_client_id],
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
          # @see HubspotSDK::Models::Crm::Objects::PartnerClientSearchParams
          def search(params = {})
            parsed, options = HubspotSDK::Crm::Objects::PartnerClientSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/partner_clients/search",
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
            @associations = HubspotSDK::Resources::Crm::Objects::PartnerClients::Associations.new(client: client)
            @batch = HubspotSDK::Resources::Crm::Objects::PartnerClients::Batch.new(client: client)
          end
        end
      end
    end
  end
end
