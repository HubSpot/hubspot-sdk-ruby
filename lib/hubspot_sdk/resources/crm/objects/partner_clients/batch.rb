# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          class Batch
            # This endpoint allows you to update several partner client records at once by
            # providing a batch of CRM object records with their respective IDs and
            # properties. It is useful for synchronizing data across systems or making bulk
            # updates efficiently.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::PartnerClients::BatchUpdateParams
            def update(params)
              parsed, options = HubSpotSDK::Crm::Objects::PartnerClients::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/partner_clients/batch/update",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Crm::Objects::PartnerClients::BatchGetParams} for more
            # details.
            #
            # Retrieve multiple partner client objects in a single request by specifying their
            # IDs. This endpoint is useful for efficiently accessing data for multiple clients
            # at once, particularly when integrating with third-party systems.
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
            # @see HubSpotSDK::Models::Crm::Objects::PartnerClients::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Crm::Objects::PartnerClients::BatchGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/partner_clients/batch/read",
                query: query,
                body: parsed.except(*query_params),
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
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
