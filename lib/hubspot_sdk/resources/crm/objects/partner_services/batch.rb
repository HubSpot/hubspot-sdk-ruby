# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerServices
          class Batch
            # Update a batch of partner services by internal ID, or unique property values
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::PartnerServices::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::Crm::Objects::PartnerServices::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/objects/partner_services/batch/update",
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Crm::Objects::PartnerServices::BatchGetParams} for more
            # details.
            #
            # Retrieve records by record ID or include the `idProperty` parameter to retrieve
            # records by a custom unique value property.
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
            # @see HubspotSDK::Models::Crm::Objects::PartnerServices::BatchGetParams
            def get(params)
              parsed, options = HubspotSDK::Crm::Objects::PartnerServices::BatchGetParams.dump_request(params)
              query_params = [:archived]
              @client.request(
                method: :post,
                path: "crm/v3/objects/partner_services/batch/read",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
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
