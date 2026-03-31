# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Webhooks
      class Webhooks
        class Batch
          # Batch create event subscriptions for the specified app.
          #
          # @overload create(app_id, inputs:, request_options: {})
          #
          # @param app_id [Integer]
          # @param inputs [Array<HubspotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Webhooks::BatchResponseSubscriptionResponse]
          #
          # @see HubspotSDK::Models::Webhooks::Webhooks::BatchCreateParams
          def create(app_id, params)
            parsed, options = HubspotSDK::Webhooks::Webhooks::BatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["webhooks/2026-03/%1$s/subscriptions/batch/update", app_id],
              body: parsed,
              model: HubspotSDK::Webhooks::BatchResponseSubscriptionResponse,
              options: options
            )
          end

          # @overload get_earliest(count, install_portal_id: nil, request_options: {})
          #
          # @param count [Integer]
          # @param install_portal_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
          #
          # @see HubspotSDK::Models::Webhooks::Webhooks::BatchGetEarliestParams
          def get_earliest(count, params = {})
            parsed, options = HubspotSDK::Webhooks::Webhooks::BatchGetEarliestParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["webhooks-journal/journal/2026-03/batch/earliest/%1$s", count],
              query: query.transform_keys(install_portal_id: "installPortalId"),
              model: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse,
              options: options
            )
          end

          # @overload get_latest(count, install_portal_id: nil, request_options: {})
          #
          # @param count [Integer]
          # @param install_portal_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
          #
          # @see HubspotSDK::Models::Webhooks::Webhooks::BatchGetLatestParams
          def get_latest(count, params = {})
            parsed, options = HubspotSDK::Webhooks::Webhooks::BatchGetLatestParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["webhooks-journal/journal/2026-03/batch/latest/%1$s", count],
              query: query.transform_keys(install_portal_id: "installPortalId"),
              model: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse,
              options: options
            )
          end

          # @overload get_next(count, offset:, install_portal_id: nil, request_options: {})
          #
          # @param count [Integer] Path param
          #
          # @param offset [String] Path param
          #
          # @param install_portal_id [Integer] Query param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
          #
          # @see HubspotSDK::Models::Webhooks::Webhooks::BatchGetNextParams
          def get_next(count, params)
            parsed, options = HubspotSDK::Webhooks::Webhooks::BatchGetNextParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            offset =
              parsed.delete(:offset) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["webhooks-journal/journal/2026-03/batch/%1$s/next/%2$s", offset, count],
              query: query.transform_keys(install_portal_id: "installPortalId"),
              model: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse,
              options: options
            )
          end

          # @overload read(inputs:, install_portal_id: nil, request_options: {})
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param install_portal_id [Integer] Query param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
          #
          # @see HubspotSDK::Models::Webhooks::Webhooks::BatchReadParams
          def read(params)
            query_params = [:install_portal_id]
            parsed, options = HubspotSDK::Webhooks::Webhooks::BatchReadParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "webhooks-journal/journal/2026-03/batch/read",
              query: query.transform_keys(install_portal_id: "installPortalId"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse,
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
