# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          class Batch
            # Update a batch of Partner Clients by ID (`objectId`) or unique property value
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
