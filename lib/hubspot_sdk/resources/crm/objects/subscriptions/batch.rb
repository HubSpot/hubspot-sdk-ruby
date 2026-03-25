# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Subscriptions
          class Batch
            # Create multiple subscription objects in a single batch operation, allowing for
            # efficient data entry and management.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Subscriptions::BatchCreateParams
            def create(params)
              parsed, options = HubspotSDK::Crm::Objects::Subscriptions::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/subscriptions/batch/create",
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Batch update multiple subscription objects in a single batch operation, allowing
            # for efficient modifications of CRM subscription records.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Subscriptions::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::Crm::Objects::Subscriptions::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/subscriptions/batch/update",
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive a batch of subscription objects by providing their IDs in the request
            # body.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Crm::Objects::Subscriptions::BatchDeleteParams
            def delete(params)
              parsed, options = HubspotSDK::Crm::Objects::Subscriptions::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/subscriptions/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Crm::Objects::Subscriptions::BatchGetParams} for more
            # details.
            #
            # Retrieve a batch of commerce subscriptions by their IDs, including specified
            # properties and their histories.
            #
            # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
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
            # @see HubspotSDK::Models::Crm::Objects::Subscriptions::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubspotSDK::Crm::Objects::Subscriptions::BatchGetParams.dump_request(params)
              query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/subscriptions/batch/read",
                query: query,
                body: parsed.except(*query_params),
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # This endpoint allows you to perform a batch upsert operation on subscription
            # objects, which will either update existing records or create new ones if they do
            # not already exist. The operation returns the status, timestamps, and a list of
            # successfully processed objects.
            #
            # @overload upsert(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Subscriptions::BatchUpsertParams
            def upsert(params)
              parsed, options = HubspotSDK::Crm::Objects::Subscriptions::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/subscriptions/batch/upsert",
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
