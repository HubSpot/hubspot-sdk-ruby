# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Companies
          class Batch
            # Create a batch of companies. The `inputs` array can contain a `properties`
            # object to define property values for each company, along with an `associations`
            # array to define
            # [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4)
            # with other CRM records.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Companies::BatchCreateParams
            def create(params)
              parsed, options = HubspotSDK::Crm::Objects::Companies::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/companies/batch/create",
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update a batch of companies by ID.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Companies::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::Crm::Objects::Companies::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/companies/batch/update",
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Delete a batch of companies by ID. Deleted companies can be restored within 90
            # days of deletion. Learn more about
            # [restoring records](https://knowledge.hubspot.com/records/restore-deleted-records).
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Crm::Objects::Companies::BatchDeleteParams
            def delete(params)
              parsed, options = HubspotSDK::Crm::Objects::Companies::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/companies/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Crm::Objects::Companies::BatchGetParams} for more details.
            #
            # Retrieve a batch of companies by ID (`companyId`) or by a unique property
            # (`idProperty`). You can specify what is returned using the `properties` query
            # parameter.
            #
            # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>] Body param:
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
            # @see HubspotSDK::Models::Crm::Objects::Companies::BatchGetParams
            def get(params)
              parsed, options = HubspotSDK::Crm::Objects::Companies::BatchGetParams.dump_request(params)
              query_params = [:archived]
              @client.request(
                method: :post,
                path: "crm/v3/objects/companies/batch/read",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Create or update companies identified by a unique property value as specified by
            # the `idProperty` query parameter. `idProperty` query param refers to a property
            # whose values are unique for the object.
            #
            # @overload upsert(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Companies::BatchUpsertParams
            def upsert(params)
              parsed, options = HubspotSDK::Crm::Objects::Companies::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/companies/batch/upsert",
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
