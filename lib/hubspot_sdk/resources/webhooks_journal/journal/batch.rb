# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Journal
        class Batch
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetParams} for more details.
          #
          # Execute a batch read operation on the webhooks journal for the specified date,
          # 2026-03. This endpoint allows you to retrieve multiple entries from the webhooks
          # journal in a single request, which can be useful for processing large amounts of
          # data efficiently. Ensure that the request body is provided in the required
          # format.
          #
          # @overload get(inputs:, install_portal_id: nil, request_options: {})
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param install_portal_id [Integer] Query param: An integer representing the ID of the portal installation for which
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetParams
          def get(params)
            query_params = [:install_portal_id]
            parsed, options = HubSpotSDK::WebhooksJournal::Journal::BatchGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "webhooks-journal/journal/2026-03/batch/read",
              query: query.transform_keys(install_portal_id: "installPortalId"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::BatchResponseJournalFetchResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetEarliestParams} for more
          # details.
          #
          # Retrieve the earliest batch of webhook journal entries for a specified count.
          # This endpoint is useful for accessing historical webhook data in batches,
          # allowing you to process or analyze older entries. The number of entries
          # retrieved is determined by the count parameter.
          #
          # @overload get_earliest(count, install_portal_id: nil, request_options: {})
          #
          # @param count [Integer] The number of earliest journal entries to retrieve. This must be an integer with
          #
          # @param install_portal_id [Integer] The ID of the portal installation. This is an integer value that specifies which
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetEarliestParams
          def get_earliest(count, params = {})
            parsed, options = HubSpotSDK::WebhooksJournal::Journal::BatchGetEarliestParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["webhooks-journal/journal/2026-03/batch/earliest/%1$s", count],
              query: query.transform_keys(install_portal_id: "installPortalId"),
              model: HubSpotSDK::BatchResponseJournalFetchResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetFromOffsetParams} for
          # more details.
          #
          # Retrieve a batch of webhook journal entries starting from a specified offset.
          # This endpoint allows you to fetch a defined number of entries, which can be
          # useful for processing large datasets in manageable chunks.
          #
          # @overload get_from_offset(count, offset:, install_portal_id: nil, request_options: {})
          #
          # @param count [Integer] Path param: The number of journal entries to retrieve. This must be an integer w
          #
          # @param offset [String] Path param: The starting point for fetching the journal entries. This is a strin
          #
          # @param install_portal_id [Integer] Query param: The ID of the portal installation. This is an integer value.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetFromOffsetParams
          def get_from_offset(count, params)
            parsed, options = HubSpotSDK::WebhooksJournal::Journal::BatchGetFromOffsetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            offset =
              parsed.delete(:offset) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["webhooks-journal/journal/2026-03/batch/%1$s/next/%2$s", offset, count],
              query: query.transform_keys(install_portal_id: "installPortalId"),
              model: HubSpotSDK::BatchResponseJournalFetchResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetLatestParams} for more
          # details.
          #
          # Retrieve the latest batch of webhook journal entries up to the specified count.
          # This endpoint is useful for fetching recent webhook data for analysis or
          # processing. The count parameter determines the maximum number of entries to
          # return.
          #
          # @overload get_latest(count, install_portal_id: nil, request_options: {})
          #
          # @param count [Integer] The maximum number of journal entries to retrieve. This is a required integer pa
          #
          # @param install_portal_id [Integer] The ID of the portal installation. This is an integer value used to specify the
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetLatestParams
          def get_latest(count, params = {})
            parsed, options = HubSpotSDK::WebhooksJournal::Journal::BatchGetLatestParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["webhooks-journal/journal/2026-03/batch/latest/%1$s", count],
              query: query.transform_keys(install_portal_id: "installPortalId"),
              model: HubSpotSDK::BatchResponseJournalFetchResponse,
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
