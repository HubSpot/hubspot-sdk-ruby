# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class JournalLocal
        # @return [HubSpotSDK::Resources::WebhooksJournal::JournalLocal::Batch]
        attr_reader :batch

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::WebhooksJournal::JournalLocalGetEarliestParams} for more
        # details.
        #
        # Retrieve the earliest webhook journal entries for the specified portal. This
        # endpoint can be used to access the oldest records available in the webhook
        # journal, which may be useful for auditing or historical analysis.
        #
        # @overload get_earliest(install_portal_id: nil, request_options: {})
        #
        # @param install_portal_id [Integer] The ID of the portal for which to retrieve the earliest webhook journal entries.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::JournalLocalGetEarliestParams
        def get_earliest(params = {})
          parsed, options = HubSpotSDK::WebhooksJournal::JournalLocalGetEarliestParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "webhooks-journal/journal-local/2026-03/earliest",
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::WebhooksJournal::JournalLocalGetLatestParams} for more
        # details.
        #
        # Retrieve the latest entries from the webhooks journal for the specified portal.
        # This endpoint is useful for accessing the most recent webhook events and their
        # statuses, allowing you to monitor and debug webhook activity effectively.
        #
        # @overload get_latest(install_portal_id: nil, request_options: {})
        #
        # @param install_portal_id [Integer] The unique identifier of the portal installation for which to retrieve the lates
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::JournalLocalGetLatestParams
        def get_latest(params = {})
          parsed, options = HubSpotSDK::WebhooksJournal::JournalLocalGetLatestParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "webhooks-journal/journal/2026-03/latest",
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::WebhooksJournal::JournalLocalGetNextFromOffsetParams} for
        # more details.
        #
        # Retrieve the next set of webhook journal entries starting from a specified
        # offset. This endpoint is useful for paginating through large sets of webhook
        # data, allowing you to continue from where a previous request left off.
        #
        # @overload get_next_from_offset(offset, install_portal_id: nil, request_options: {})
        #
        # @param offset [String] The starting point for retrieving the next set of webhook journal entries. This
        #
        # @param install_portal_id [Integer] The ID of the portal installation to filter the webhook journal entries. This is
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::JournalLocalGetNextFromOffsetParams
        def get_next_from_offset(offset, params = {})
          parsed, options = HubSpotSDK::WebhooksJournal::JournalLocalGetNextFromOffsetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["webhooks-journal/journal-local/2026-03/offset/%1$s/next", offset],
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # Retrieve the status of a specific webhook journal entry using its unique status
        # ID. This endpoint is useful for monitoring the progress or outcome of webhook
        # journal entries, allowing you to check if an entry is pending, in progress,
        # completed, failed, or expired.
        #
        # @overload get_status(status_id, request_options: {})
        #
        # @param status_id [String] The unique identifier of the status to retrieve. It should be in UUID format.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::SnapshotStatusResponse]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::JournalLocalGetStatusParams
        def get_status(status_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks-journal/journal-local/2026-03/status/%1$s", status_id],
            model: HubSpotSDK::SnapshotStatusResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::WebhooksJournal::JournalLocal::Batch.new(client: client)
        end
      end
    end
  end
end
