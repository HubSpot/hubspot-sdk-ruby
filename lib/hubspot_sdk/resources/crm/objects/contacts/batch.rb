# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Contacts
          class Batch
            # Create a batch of contacts. The `inputs` array can contain a `properties` object
            # to define property values for each record, along with an `associations` array to
            # define
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
            # @see HubspotSDK::Models::Crm::Objects::Contacts::BatchCreateParams
            def create(params)
              parsed, options = HubspotSDK::Crm::Objects::Contacts::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/contacts/batch/create",
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update a batch of contacts by ID (`contactId`) or unique property value
            # (`idProperty`). Provided property values will be overwritten. Read-only and
            # non-existent properties will result in an error. Properties values can be
            # cleared by passing an empty string.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Contacts::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::Crm::Objects::Contacts::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/contacts/batch/update",
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive a batch of contacts by ID. Archived contacts can be restored within 90
            # days of deletion. Learn more about the
            # [data impacted by contact deletions](https://knowledge.hubspot.com/privacy-and-consent/understand-restorable-and-permanent-contact-deletions)
            # and how to
            # [restore archived records](https://knowledge.hubspot.com/records/restore-deleted-records).
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Crm::Objects::Contacts::BatchDeleteParams
            def delete(params)
              parsed, options = HubspotSDK::Crm::Objects::Contacts::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/contacts/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Crm::Objects::Contacts::BatchGetParams} for more details.
            #
            # Retrieve a batch of contacts by ID (`contactId`) or unique property value
            # (`idProperty`).
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
            # @param id_property [String] Body param: A unique property used to identify objects instead of the default ID
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Contacts::BatchGetParams
            def get(params)
              parsed, options = HubspotSDK::Crm::Objects::Contacts::BatchGetParams.dump_request(params)
              query_params = [:archived]
              @client.request(
                method: :post,
                path: "crm/v3/objects/contacts/batch/read",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Upsert a batch of contacts. The `inputs` array can contain a `properties` object
            # to define property values for each record.
            #
            # @overload upsert(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::Contacts::BatchUpsertParams
            def upsert(params)
              parsed, options = HubspotSDK::Crm::Objects::Contacts::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/contacts/batch/upsert",
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
