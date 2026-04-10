# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class GenericObjects
          class Batch
            # Create a batch of objects
            #
            # @overload create(object_type, inputs:, request_options: {})
            #
            # @param object_type [String]
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GenericObjects::BatchCreateParams
            def create(object_type, params)
              parsed, options = HubSpotSDK::Crm::Objects::GenericObjects::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/create", object_type],
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update a batch of objects by internal ID, or unique property values
            #
            # @overload update(object_type, inputs:, request_options: {})
            #
            # @param object_type [String]
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GenericObjects::BatchUpdateParams
            def update(object_type, params)
              parsed, options = HubSpotSDK::Crm::Objects::GenericObjects::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/update", object_type],
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive a batch of objects by ID
            #
            # @overload delete(object_type, inputs:, request_options: {})
            #
            # @param object_type [String]
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GenericObjects::BatchDeleteParams
            def delete(object_type, params)
              parsed, options = HubSpotSDK::Crm::Objects::GenericObjects::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/archive", object_type],
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Crm::Objects::GenericObjects::BatchGetParams} for more
            # details.
            #
            # Retrieve records by record ID or include the `idProperty` parameter to retrieve
            # records by a custom unique value property.
            #
            # @overload get(object_type, inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
            #
            # @param object_type [String] Path param
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
            # @see HubSpotSDK::Models::Crm::Objects::GenericObjects::BatchGetParams
            def get(object_type, params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Crm::Objects::GenericObjects::BatchGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/read", object_type],
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
            # @overload upsert(object_type, inputs:, request_options: {})
            #
            # @param object_type [String]
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GenericObjects::BatchUpsertParams
            def upsert(object_type, params)
              parsed, options = HubSpotSDK::Crm::Objects::GenericObjects::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/objects/2026-03/%1$s/batch/upsert", object_type],
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
