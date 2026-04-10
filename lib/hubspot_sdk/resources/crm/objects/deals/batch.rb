# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class Deals
          class Batch
            # Create multiple deals in a single request.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Deals::BatchCreateParams
            def create(params)
              parsed, options = HubSpotSDK::Crm::Objects::Deals::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/0-3/batch/create",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update multiple deals using their internal IDs or unique property values.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Deals::BatchUpdateParams
            def update(params)
              parsed, options = HubSpotSDK::Crm::Objects::Deals::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/0-3/batch/update",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive multiple deals using their IDs.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Deals::BatchDeleteParams
            def delete(params)
              parsed, options = HubSpotSDK::Crm::Objects::Deals::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/0-3/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Crm::Objects::Deals::BatchGetParams} for more details.
            #
            # Retrieve records by record ID or include the `idProperty` parameter to retrieve
            # records by a custom unique value property.
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
            # @see HubSpotSDK::Models::Crm::Objects::Deals::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Crm::Objects::Deals::BatchGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/0-3/batch/read",
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
            # @see HubSpotSDK::Models::Crm::Objects::Deals::BatchUpsertParams
            def upsert(params)
              parsed, options = HubSpotSDK::Crm::Objects::Deals::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/0-3/batch/upsert",
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
