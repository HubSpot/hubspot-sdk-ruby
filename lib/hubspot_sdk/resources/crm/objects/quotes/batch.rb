# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class Quotes
          class Batch
            # Create multiple quotes in a single request by providing a batch of quote
            # objects, each with its own properties and optional associations.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Quotes::BatchCreateParams
            def create(params)
              parsed, options = HubSpotSDK::Crm::Objects::Quotes::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/quotes/batch/create",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update multiple quotes using their internal IDs or unique property values. This
            # endpoint allows batch processing of quote updates, ensuring efficient management
            # of multiple records in a single request.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Quotes::BatchUpdateParams
            def update(params)
              parsed, options = HubSpotSDK::Crm::Objects::Quotes::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/quotes/batch/update",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive multiple quotes by their IDs in a single request, effectively moving
            # them to the recycling bin.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Crm::Objects::Quotes::BatchDeleteParams
            def delete(params)
              parsed, options = HubSpotSDK::Crm::Objects::Quotes::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/quotes/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Crm::Objects::Quotes::BatchGetParams} for more details.
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
            # @see HubSpotSDK::Models::Crm::Objects::Quotes::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Crm::Objects::Quotes::BatchGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/quotes/batch/read",
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
            # @see HubSpotSDK::Models::Crm::Objects::Quotes::BatchUpsertParams
            def upsert(params)
              parsed, options = HubSpotSDK::Crm::Objects::Quotes::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/quotes/batch/upsert",
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
