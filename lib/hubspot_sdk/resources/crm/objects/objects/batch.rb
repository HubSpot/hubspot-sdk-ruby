# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Objects
          class Batch
            # Create a batch of objects
            #
            # @overload create(object_type, inputs:, request_options: {})
            #
            # @param object_type [String]
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Objects::BatchCreateParams
            def create(object_type, params)
              parsed, options = HubspotSDK::Crm::Objects::Objects::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/create", object_type],
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update a batch of objects by internal ID, or unique property values
            #
            # @overload update(object_type, inputs:, request_options: {})
            #
            # @param object_type [String]
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Objects::BatchUpdateParams
            def update(object_type, params)
              parsed, options = HubspotSDK::Crm::Objects::Objects::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/update", object_type],
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive a batch of objects by ID
            #
            # @overload delete(object_type, inputs:, request_options: {})
            #
            # @param object_type [String]
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Crm::Objects::Objects::BatchDeleteParams
            def delete(object_type, params)
              parsed, options = HubspotSDK::Crm::Objects::Objects::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/archive", object_type],
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Crm::Objects::Objects::BatchGetParams} for more details.
            #
            # Retrieve records by record ID or include the `idProperty` parameter to retrieve
            # records by a custom unique value property.
            #
            # @overload get(object_type, inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
            #
            # @param object_type [String] Path param
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
            # @see HubspotSDK::Models::Crm::Objects::Objects::BatchGetParams
            def get(object_type, params)
              query_params = [:archived]
              parsed, options = HubspotSDK::Crm::Objects::Objects::BatchGetParams.dump_request(params)
              query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/read", object_type],
                query: query,
                body: parsed.except(*query_params),
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Create or update records identified by a unique property value as specified by
            # the `idProperty` query param. `idProperty` query param refers to a property
            # whose values are unique for the object.
            #
            # @overload upsert(object_type, inputs:, request_options: {})
            #
            # @param object_type [String]
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Objects::BatchUpsertParams
            def upsert(object_type, params)
              parsed, options = HubspotSDK::Crm::Objects::Objects::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/upsert", object_type],
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject,
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
end
