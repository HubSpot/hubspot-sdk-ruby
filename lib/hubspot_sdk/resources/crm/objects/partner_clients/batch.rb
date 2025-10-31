# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Objects
        class PartnerClients
          class Batch
            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::CRM::Objects::PartnerClients::BatchBatchGetParams} for more
            # details.
            #
            # Read a batch of objects by internal ID, or unique property values
            #
            # @overload batch_get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
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
            # @see HubspotSDK::Models::CRM::Objects::PartnerClients::BatchBatchGetParams
            def batch_get(params)
              parsed, options = HubspotSDK::CRM::Objects::PartnerClients::BatchBatchGetParams.dump_request(params)
              query_params = [:archived]
              @client.request(
                method: :post,
                path: "crm/v3/objects/partner_clients/batch/read",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: HubspotSDK::CRM::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update a batch of objects
            #
            # @overload batch_update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::CRM::Objects::PartnerClients::BatchBatchUpdateParams
            def batch_update(params)
              parsed, options = HubspotSDK::CRM::Objects::PartnerClients::BatchBatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/partner_clients/batch/update",
                body: parsed,
                model: HubspotSDK::CRM::BatchResponseSimplePublicObject,
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
