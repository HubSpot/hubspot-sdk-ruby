# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Snapshots
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::WebhooksJournal::SnapshotCreateParams} for more details.
        #
        # Create a batch of CRM object snapshots in HubSpot. This endpoint is used to
        # capture the current state of specified CRM objects for later reference or
        # analysis. It requires a JSON payload containing the details of the CRM objects
        # to snapshot. This operation is exempt from daily and ten-secondly rate limits.
        #
        # @overload create(snapshot_requests:, request_options: {})
        #
        # @param snapshot_requests [Array<HubSpotSDK::Models::CrmObjectSnapshotRequest>] An array of CrmObjectSnapshotRequest objects, each representing a request to cre
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::CrmObjectSnapshotBatchResponse]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::SnapshotCreateParams
        def create(params)
          parsed, options = HubSpotSDK::WebhooksJournal::SnapshotCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "webhooks-journal/snapshots/2026-03/crm",
            body: parsed,
            model: HubSpotSDK::CrmObjectSnapshotBatchResponse,
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
