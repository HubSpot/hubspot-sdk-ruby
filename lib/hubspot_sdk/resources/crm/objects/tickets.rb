# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Tickets
          # @return [HubspotSDK::Resources::Crm::Objects::Tickets::Batch]
          attr_reader :batch

          # Create a ticket with the given properties and return a copy of the object,
          # including the ID. Documentation and examples for creating standard tickets is
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
          # @return [HubspotSDK::Models::Crm::CreatedResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::TicketCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Objects::TicketCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/tickets",
              body: parsed,
              model: HubspotSDK::Crm::CreatedResponseSimplePublicObject,
              options: options
            )
          end

          # Perform a partial update of an Object identified by `{ticketId}`or optionally a
          # unique property value as specified by the `idProperty` query param. `{ticketId}`
          # refers to the internal object ID by default, and the `idProperty` query param
          # refers to a property whose values are unique for the object. Provided property
          # values will be overwritten. Read-only and non-existent properties will result in
          # an error. Properties values can be cleared by passing an empty string.
          #
          # @overload update(ticket_id, properties:, id_property: nil, request_options: {})
          #
          # @param ticket_id [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::TicketUpdateParams
          def update(ticket_id, params)
            parsed, options = HubspotSDK::Crm::Objects::TicketUpdateParams.dump_request(params)
            query_params = [:id_property]
            @client.request(
              method: :patch,
              path: ["crm/v3/objects/tickets/%1$s", ticket_id],
              query: parsed.slice(*query_params).transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::TicketListParams} for more details.
          #
          # Read a page of tickets. Control what is returned via the `properties` query
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
          # @see HubspotSDK::Models::Crm::Objects::TicketListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::TicketListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/objects/tickets",
              query: parsed.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Move an Object identified by `{ticketId}` to the recycling bin.
          #
          # @overload delete(ticket_id, request_options: {})
          #
          # @param ticket_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::TicketDeleteParams
          def delete(ticket_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/v3/objects/tickets/%1$s", ticket_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::TicketGetParams} for more details.
          #
          # Read an Object identified by `{ticketId}`. `{ticketId}` refers to the internal
          # object ID by default, or optionally any unique property value as specified by
          # the `idProperty` query param. Control what is returned via the `properties`
          # query param.
          #
          # @overload get(ticket_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param ticket_id [String]
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
          # @see HubspotSDK::Models::Crm::Objects::TicketGetParams
          def get(ticket_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::TicketGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/objects/tickets/%1$s", ticket_id],
              query: parsed.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::TicketMergeParams} for more details.
          #
          # Merge two tickets, combining them into one ticket record.
          #
          # @overload merge(object_id_to_merge:, primary_object_id:, request_options: {})
          #
          # @param object_id_to_merge [String] The unique identifier of the CRM object that will be merged into the primary obj
          #
          # @param primary_object_id [String] The unique identifier of the CRM object that will remain after the merge.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::TicketMergeParams
          def merge(params)
            parsed, options = HubspotSDK::Crm::Objects::TicketMergeParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/tickets/merge",
              body: parsed,
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Search for tickets by filtering on properties, searching through associations,
          # and sorting results. Learn more about
          # [CRM search](https://developers.hubspot.com/docs/guides/api/crm/search#make-a-search-request).
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
          # @see HubspotSDK::Models::Crm::Objects::TicketSearchParams
          def search(params)
            parsed, options = HubspotSDK::Crm::Objects::TicketSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/tickets/search",
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
            @batch = HubspotSDK::Resources::Crm::Objects::Tickets::Batch.new(client: client)
          end
        end
      end
    end
  end
end
