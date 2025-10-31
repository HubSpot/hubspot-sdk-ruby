# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Objects
        class Deals
          class Batch
            # Create multiple deals in a single request.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::CRM::Objects::Deals::BatchCreateParams
            def create(params)
              parsed, options = HubspotSDK::CRM::Objects::Deals::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/0-3/batch/create",
                body: parsed,
                model: HubspotSDK::CRM::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update multiple deals using their internal IDs or unique property values.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::CRM::Objects::Deals::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::CRM::Objects::Deals::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/0-3/batch/update",
                body: parsed,
                model: HubspotSDK::CRM::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive multiple deals using their IDs.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectID>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::CRM::Objects::Deals::BatchDeleteParams
            def delete(params)
              parsed, options = HubspotSDK::CRM::Objects::Deals::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/0-3/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::CRM::Objects::Deals::BatchGetParams} for more details.
            #
            # Retrieve records by record ID or include the `idProperty` parameter to retrieve
            # records by a custom unique value property.
            #
            # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectID>] Body param:
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
            # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::CRM::Objects::Deals::BatchGetParams
            def get(params)
              parsed, options = HubspotSDK::CRM::Objects::Deals::BatchGetParams.dump_request(params)
              query_params = [:archived]
              @client.request(
                method: :post,
                path: "crm/v3/objects/0-3/batch/read",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: HubspotSDK::CRM::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Create or update records identified by a unique property value as specified by
            # the `idProperty` query param. `idProperty` query param refers to a property
            # whose values are unique for the object.
            #
            # @overload upsert(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubspotSDK::Models::CRM::Objects::Deals::BatchUpsertParams
            def upsert(params)
              parsed, options = HubspotSDK::CRM::Objects::Deals::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/0-3/batch/upsert",
                body: parsed,
                model: HubspotSDK::CRM::BatchResponseSimplePublicUpsertObject,
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
