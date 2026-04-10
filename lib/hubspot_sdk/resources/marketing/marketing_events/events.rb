# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class MarketingEvents
        class Events
          # Mark a marketing event as cancelled.
          #
          # @overload cancel_by_external_event_id(external_event_id, external_account_id:, request_options: {})
          #
          # @param external_event_id [String]
          # @param external_account_id [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Marketing::MarketingEventDefaultResponse]
          #
          # @see HubSpotSDK::Models::Marketing::MarketingEvents::EventCancelByExternalEventIDParams
          def cancel_by_external_event_id(external_event_id, params)
            parsed, options =
              HubSpotSDK::Marketing::MarketingEvents::EventCancelByExternalEventIDParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :post,
              path: ["marketing/marketing-events/2026-03/events/%1$s/cancel", external_event_id],
              query: query.transform_keys(external_account_id: "externalAccountId"),
              model: HubSpotSDK::Marketing::MarketingEventDefaultResponse,
              options: options
            )
          end

          # Mark a marketing event as completed
          #
          # @overload complete_by_external_event_id(external_event_id, external_account_id:, end_date_time:, start_date_time:, request_options: {})
          #
          # @param external_event_id [String] Path param
          #
          # @param external_account_id [String] Query param
          #
          # @param end_date_time [Time] Body param: The end date and time of the marketing event in ISO 8601 format
          #
          # @param start_date_time [Time] Body param: The start date and time of the marketing event in ISO 8601 format
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Marketing::MarketingEventDefaultResponse]
          #
          # @see HubSpotSDK::Models::Marketing::MarketingEvents::EventCompleteByExternalEventIDParams
          def complete_by_external_event_id(external_event_id, params)
            query_params = [:external_account_id]
            parsed, options =
              HubSpotSDK::Marketing::MarketingEvents::EventCompleteByExternalEventIDParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: ["marketing/marketing-events/2026-03/events/%1$s/complete", external_event_id],
              query: query.transform_keys(external_account_id: "externalAccountId"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::Marketing::MarketingEventDefaultResponse,
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
