# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class Carts
          class Batch
            # Create a batch of carts with specified properties and associations.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Carts::BatchCreateParams
            def create(params)
              parsed, options = HubSpotSDK::Crm::Objects::Carts::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/carts/batch/create",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update a batch of carts using their internal IDs or unique property values.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Carts::BatchUpdateParams
            def update(params)
              parsed, options = HubSpotSDK::Crm::Objects::Carts::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/carts/batch/update",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive a batch of carts identified by their IDs.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Carts::BatchDeleteParams
            def delete(params)
              parsed, options = HubSpotSDK::Crm::Objects::Carts::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/carts/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Crm::Objects::Carts::BatchGetParams} for more details.
            #
            # Retrieve carts by ID, or include the `idProperty` parameter to retrieve carts by
            # a custom unique value property.
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
            # @see HubSpotSDK::Models::Crm::Objects::Carts::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Crm::Objects::Carts::BatchGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/carts/batch/read",
                query: query,
                body: parsed.except(*query_params),
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Create or update records identified by a unique property value as specified by
            # the `idProperty` query parameter.
            #
            # @overload upsert(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Carts::BatchUpsertParams
            def upsert(params)
              parsed, options = HubSpotSDK::Crm::Objects::Carts::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/carts/batch/upsert",
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
