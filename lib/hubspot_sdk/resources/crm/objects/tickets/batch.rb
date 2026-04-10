# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class Tickets
          class Batch
            # Create a batch of tickets. The `inputs` array can contain a `properties` object
            # to define property values for the ticket, along with an `associations` array to
            # define
            # [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4)
            # with other CRM records.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Tickets::BatchCreateParams
            def create(params)
              parsed, options = HubSpotSDK::Crm::Objects::Tickets::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/tickets/batch/create",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update a batch of tickets by ID (`ticketId`) or unique property value
            # (`idProperty`). Provided property values will be overwritten. Read-only and
            # non-existent properties will result in an error. Properties values can be
            # cleared by passing an empty string.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Tickets::BatchUpdateParams
            def update(params)
              parsed, options = HubSpotSDK::Crm::Objects::Tickets::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/tickets/batch/update",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Delete a batch of tickets by ID. Deleted tickets can be restored within 90 days
            # of deletion. Learn more about
            # [restoring records](https://knowledge.hubspot.com/records/restore-deleted-records).
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Tickets::BatchDeleteParams
            def delete(params)
              parsed, options = HubSpotSDK::Crm::Objects::Tickets::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/tickets/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Crm::Objects::Tickets::BatchGetParams} for more details.
            #
            # Retrieve a batch of tickets by ID (`ticketId`) or unique property value
            # (`idProperty`).
            #
            # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>] Body param
            #
            # @param properties [Array<String>] Body param: Key-value pairs for setting properties for the new object.
            #
            # @param properties_with_history [Array<String>] Body param: Key-value pairs for setting properties for the new object and their
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param id_property [String] Body param: When using a custom unique value property to retrieve records, the n
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Tickets::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Crm::Objects::Tickets::BatchGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/tickets/batch/read",
                query: query,
                body: parsed.except(*query_params),
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Create or update records identified by a unique property value as specified by
            # the `idProperty` query param. `idProperty` query param refers to a property
            # whose values are unique for the object.
            #
            # @overload upsert(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Tickets::BatchUpsertParams
            def upsert(params)
              parsed, options = HubSpotSDK::Crm::Objects::Tickets::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/tickets/batch/upsert",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicUpsertObject,
                options: options
              )
            end

            # @api private
            #
            # @param client [HubSpotSDK::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
