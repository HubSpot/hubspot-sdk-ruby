# frozen_string_literal: true

module HubspotSDK
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
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::PartnerClients::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::Crm::Objects::PartnerClients::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/partner_clients/batch/update",
                body: parsed,
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
