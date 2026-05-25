# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class JournalLocal
        class Batch
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::JournalLocal::BatchGetParams} for more
          # details.
          #
          # Execute a batch read operation on the webhooks journal. This endpoint allows you
          # to retrieve a batch of webhook journal entries by providing the necessary input
          # data. It is useful for processing multiple records in a single request,
          # streamlining data retrieval tasks.
          #
          # @overload get(inputs:, install_portal_id: nil, request_options: {})
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param install_portal_id [Integer] Query param: The ID of the portal where the webhooks are installed. This paramet
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::JournalLocal::BatchGetParams
          def get(params)
            query_params = [:install_portal_id]
            parsed, options = HubSpotSDK::WebhooksJournal::JournalLocal::BatchGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "webhooks-journal/journal-local/2026-03/batch/read",
              query: query.transform_keys(install_portal_id: "installPortalId"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::BatchResponseJournalFetchResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::JournalLocal::BatchGetEarliestParams} for
          # more details.
          #
          # Retrieve the earliest batch of webhook journal entries. This endpoint is useful
          # for accessing the oldest available data in the webhook journal, allowing users
          # to process or analyze historical webhook events. The number of entries to fetch
          # is specified by the 'count' path parameter.
          #
          # @overload get_earliest(count, install_portal_id: nil, request_options: {})
          #
          # @param count [Integer] The number of earliest webhook journal entries to retrieve. This is a required i
          #
          # @param install_portal_id [Integer] The ID of the portal installation to filter the webhook journal entries. This is
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::JournalLocal::BatchGetEarliestParams
          def get_earliest(count, params = {})
            parsed, options = HubSpotSDK::WebhooksJournal::JournalLocal::BatchGetEarliestParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["webhooks-journal/journal-local/2026-03/batch/earliest/%1$s", count],
              query: query.transform_keys(install_portal_id: "installPortalId"),
              model: HubSpotSDK::BatchResponseJournalFetchResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::JournalLocal::BatchGetFromOffsetParams}
          # for more details.
          #
          # Retrieve a batch of webhook journal entries starting from a specified offset.
          # This endpoint is useful for paginating through large sets of webhook data. The
          # number of entries returned is determined by the 'count' parameter.
          #
          # @overload get_from_offset(count, offset:, install_portal_id: nil, request_options: {})
          #
          # @param count [Integer] Path param: The number of journal entries to retrieve in this batch. Must be an
          #
          # @param offset [String] Path param: The starting point for the batch retrieval, specified as a string.
          #
          # @param install_portal_id [Integer] Query param: The ID of the portal where the webhooks are installed. This is an o
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::JournalLocal::BatchGetFromOffsetParams
          def get_from_offset(count, params)
            parsed, options =
              HubSpotSDK::WebhooksJournal::JournalLocal::BatchGetFromOffsetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            offset =
              parsed.delete(:offset) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["webhooks-journal/journal-local/2026-03/batch/%1$s/next/%2$s", offset, count],
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
