# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Journal
        # @return [HubSpotSDK::Resources::WebhooksJournal::Journal::Batch]
        attr_reader :batch

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::WebhooksJournal::JournalGetEarliestParams} for more
        # details.
        #
        # Retrieve the earliest entry from the webhooks journal for the specified portal.
        # This endpoint is useful for accessing the first recorded webhook event in the
        # journal, which can be helpful for auditing or debugging purposes.
        #
        # @overload get_earliest(install_portal_id: nil, request_options: {})
        #
        # @param install_portal_id [Integer] The ID of the portal installation to filter the journal entries by. This is an i
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::JournalGetEarliestParams
        def get_earliest(params = {})
          parsed, options = HubSpotSDK::WebhooksJournal::JournalGetEarliestParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "webhooks-journal/journal/2026-03/earliest",
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::WebhooksJournal::JournalGetNextFromOffsetParams} for more
        # details.
        #
        # Retrieve the next set of entries from the webhooks journal starting from a
        # specified offset. This endpoint is useful for paginating through journal entries
        # to process or analyze webhook events sequentially.
        #
        # @overload get_next_from_offset(offset, install_portal_id: nil, request_options: {})
        #
        # @param offset [String] The offset string indicating the starting point for retrieving the next set of j
        #
        # @param install_portal_id [Integer] The ID of the portal where the webhooks are installed. This is an integer value.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::JournalGetNextFromOffsetParams
        def get_next_from_offset(offset, params = {})
          parsed, options = HubSpotSDK::WebhooksJournal::JournalGetNextFromOffsetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["webhooks-journal/journal/2026-03/offset/%1$s/next", offset],
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # Retrieve the status of a specific webhook journal entry using its unique status
        # ID. This endpoint provides detailed information about the status, including
        # whether it is pending, in progress, completed, failed, or expired. It is useful
        # for monitoring and managing the state of webhook journal entries.
        #
        # @overload get_status(status_id, request_options: {})
        #
        # @param status_id [String] The unique identifier (UUID) of the status to retrieve.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::SnapshotStatusResponse]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::JournalGetStatusParams
        def get_status(status_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks-journal/journal/2026-03/status/%1$s", status_id],
            model: HubSpotSDK::SnapshotStatusResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::WebhooksJournal::Journal::Batch.new(client: client)
        end
      end
    end
  end
end
